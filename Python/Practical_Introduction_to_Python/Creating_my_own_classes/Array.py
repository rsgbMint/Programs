class Array:

    def __init__(self, matrix):
        self.matrix = matrix
        self.M = []
        for i in range(len(self.matrix)):
            self.M.append([0]*len(self.matrix[0]))

    def __add__(self, another):
        for i in range(len(self.matrix)):
            for j in range(len(self.matrix[0])):
                self.M[i][j] = self.matrix[i][j] + another.matrix[i][j]
        return self.M
