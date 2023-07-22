import random
import pickle


class QLearn:
    def __init__(self, actions, epsilon, alpha, gamma):
        self.q = {}
        self.epsilon = epsilon  # exploration constant
        self.alpha = alpha      # discount constant
        self.gamma = gamma      # discount factor
        self.actions = actions

    def loadQ(self, filename):
        '''
        Load the Q state-action values from a pickle file.
        '''
        
        # TODO: Implement loading Q values from pickle file.

        with open(filename) as f:
            self.q = pickle.load(f)

        print("Loaded file: {}".format(filename+".pickle"))

    def saveQ(self, filename):
        '''
        Save the Q state-action values in a pickle file.
        '''
        # TODO: Implement saving Q values to pickle and CSV files.

        with open(filename, 'wb') as f:
            pickle.dump(self.q, f)

        print("Wrote to file: {}".format(filename+".pickle"))

    def getQ(self, state, action):
        '''
        @brief returns the state, action Q value or 0.0 if the value is 
            missing
        '''
        return self.q.get((state, action), 0.0)

    def chooseAction(self, state, return_q=False):
        '''
        @brief returns a random action epsilon % of the time or the action 
            associated with the largest Q value in (1-epsilon)% of the time
        '''
        # TODO: Implement exploration vs exploitation
        #    if we need to take a random action:
        #       * return a random action
        #    else:
        #       * determine which action has the highest Q value for the state 
        #          we are in.
        #       * address edge cases - what if 2 actions have the same max Q 
        #          value?
        #       * return the action with highest Q value
        #
        # NOTE: if return_q is set to True return (action, q) instead of
        #       just action
        
        # THE NEXT LINE NEEDS TO BE MODIFIED TO MATCH THE REQUIREMENTS ABOVE
        
        # # return expected action
        # q = [self.q(state, a) for a in self.actions]
        # index = max(q)

        # # return random action
        # if random.randint(1,10)<=self.epsilon*10:
        #     index = randint(0,2)

        #           0.9         0.5
        if random.random() < self.epsilon:
            a_index = random.randint(0,2)
            return self.actions[a_index]

        #state = [1, 0, 0]
        q = [self.getQ(state, a) for a in self.actions]
        #q = [200, 300, 10] 
        #     F    L    R
        maxQ = max(q) #300

        count = q.count(maxQ)
        # In case there are several state-action max values
        # we select a random one among them
        if count > 1:
            best = [i for i in range(len(self.actions)) if q[i] == maxQ]
            # [0,1]
            i = random.choice(best)
        else:
            i = q.index(maxQ)

        # action = self.actions[i]
        # if return_q:  # if they want it, give it!
        #     return action, q
        # return action

        return self.actions[i]

    def learn(self, state1, action1, reward, state2):
        '''
        @brief updates the Q(state,value) dictionary using the bellman update
            equation
        '''
        # TODO: Implement the Bellman update function:
        #     Q(s1, a1) = Q(s1, a1) + alpha * [reward(s1,a1) + gamma* max(Q(s2)) - Q(s1,a1)]
        # 
        # NOTE: address edge cases: i.e. 
        # 
        # Find Q for current (state1, action1)
        # Address edge cases what do we want to do if the [state, action]
        #       is not in our dictionary?
        # Find max(Q) for state2
        # Update Q for (state1, action1) (use discount factor gamma for future 
        #   rewards)

        # THE NEXT LINE NEEDS TO BE MODIFIED TO MATCH THE REQUIREMENTS ABOVE

        maxqnew = max([self.getQ(state2, a) for a in self.actions])
        oldq = self.q.get((state1, action1), None)

        if oldq is None:
            self.q[(state1,action1)] = reward
        else:
            self.q[(state1,action1)] = self.q[(state1,action1)] + self.alpha * (reward + self.gamma * maxqnew - self.q[(state1,action1)])