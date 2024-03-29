""""""

import numpy as np
import tensorflow as tf
import json
import pandas as pd

with open("test.json") as fd:
    data = json.load(fd)

simple_headings = ['C1R', 'C1S', 'C2R', 'C2S',
                   'Stack1', 'Stack2', 'Stack3', 'Stack4', 'Stack5', 'Stack6']
shaped_headings = ['C1R', 'C2R', 'ShapeP', 'ShapeS', 'ShapeO',
                   'Stack1', 'Stack2', 'Stack3', 'Stack4', 'Stack5', 'Stack6']
one_hot_everything_headings = ['R1' + str(x) for x in range(13)] + ['R2' + str(x) for x in range(13)] + ['ShapeP', 'ShapeS', 'ShapeO'] + ['Stack1', 'Stack2', 'Stack3', 'Stack4', 'Stack5', 'Stack6']
# data = [x + [y] for x,y in data]
data = pd.DataFrame(np.array(data), columns=one_hot_everything_headings + ['wasRaise'])
# data.drop_duplicates(subset = one_hot_everything_headings,
                     # keep = False, inplace = True)

print(data.head())
print(data.shape)
# input()

mask = np.random.rand(len(data)) < 0.85

train_data = data[mask]
test_data = data[~mask]

def extract_data_labels(data):
  labels = data['wasRaise'].values
  data_without_string_columns_or_sale_price = data.copy().drop(columns=['wasRaise'])
  data = data_without_string_columns_or_sale_price.values.astype('float64')
  return (data, labels)

(train_data, train_targets) = extract_data_labels(train_data)
(test_data, test_targets) = extract_data_labels(test_data)

# MODEL
# import ipdb; ipdb.set_trace()

from tensorflow.keras import models
from tensorflow.keras import layers

_, data_cols = train_data.shape

λ = 1
k = 1
num_epochs = 1000
β = 0.9
β_2 = 0.99



def build_model():
    # Because we will need to instantiate
    # the same model multiple times,
    # we use a function to construct it.
#     act = tf.keras.activations.relu(x, alpha=0.01, max_value=None, threshold=0.0)
    model = models.Sequential()

    # model.add(layers.Dense(data_cols * 2, activation='relu',
    #                        input_shape=(train_data.shape[1],)))
    # model.add(layers.Dense(data_cols, activation='relu'))
    # model.add(layers.Dense(data_cols//2, activation='relu'))
    # model.add(layers.Dense(1, activation='relu'))

    model.add(layers.Dense(data_cols * 4, activation='relu',
                           input_shape=(train_data.shape[1],)))
    model.add(layers.Dense(data_cols * 4, activation='relu'))
    model.add(layers.Dense(data_cols * 2, activation='relu'))
    model.add(layers.Dense(data_cols * 2, activation='relu'))
    model.add(layers.Dense(data_cols, activation='relu'))
    model.add(layers.Dense(data_cols, activation='relu'))
    model.add(layers.Dense(1, activation='sigmoid')) # should this be sigmoid?
    # bin_ce

    filepath = "saved_net.py"
    checkpoint = tf.keras.callbacks.ModelCheckpoint(filepath, monitor='val_accuracy', verbose=1, save_best_only=True, mode='max')
    callbacks_list = [checkpoint]
    opt = tf.keras.optimizers.Adam(learning_rate=λ, beta_1=β, beta_2=β_2)

    # model.compile(optimizer=opt, loss='binary_crossentropy', metrics=['accuracy'])
    model.compile(optimizer=opt, loss='mae', metrics=['accuracy', 'mae', 'binary_accuracy'])
    return model

model = build_model()

history = model.fit(train_data, train_targets,
                    validation_data=(test_data, test_targets),
                    epochs=num_epochs, batch_size=10000, verbose=1)

res = model.evaluate(test_data, test_targets, verbose=0)

print(res)

print('keys:', history.history.keys())

for i in range(13):
    print(i)
    for j in range(13):
        for s in [[1,0,0], [0,1,0], [0,0,1]]:
            r1 = list(np.zeros((13, )))
            r2 = list(np.zeros((13, )))
            r1[i] = 1
            r2[j] = 1
            if i >= j:
                print(i,j,s)
                print(model.predict([r1 + r2 + s + [25,25,25,25,25,25]]))

def show_rank(r): {
    0: '1',
    1: '2',
    2: '3',
    3: '4',
    4: '5',
    5: '6',
    6: '7',
    7: '8',
    8: '9',
    9: 'J',
    10: 'Q',
    11: 'K',
    12: 'A',
        }
