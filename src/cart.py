import gym
import random
env = gym.make("CartPole-v1")
a, b = random.uniform(-10, 10), random.uniform(-10, 10)
# a, b = -1, -1
obs = env.reset()
R = 0
while True:
    env.render()
    action = 0 if obs[2] * a + obs[3] * b > 0 else 1
    obs, reward, done, info = env.step(action)
    R += reward
    if done:
        print(R, a, b)
        break
