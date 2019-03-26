class node():
    def __init__(self,value):
        self.left=None
        self.right=None
        self.value=value

class tree():
    def __init__(self):
        self.root=None
    def insert(self,node):
        if self.root is None:
            self.root=node
        else:
            ptr=self.root
            while  ptr:
                if ptr.value>=node.value:
                    if ptr.right is None:
                        ptr.right=node
                        break
                    else:
                        ptr=ptr.right
                else:
                    if ptr.left is None:
                        ptr.left=node
                        break
                    else:
                        ptr=ptr.left
    def display(self,node):
        if node:
            self.display(node.right)
            print(node.value)
            self.display(node.left)



Tree=tree()

for i in range(0,6):
    n=node(int(input()))
    Tree.insert(n)
Tree.display(Tree.root)
            
            
