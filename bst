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
                if ptr.value<node.value:
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
    def minimum(self,root):
        if root.left==None and root.right==None:
            return root.value
        else:
            if root.left==None:
                if root.right is not None:
                    return (root.value+self.minimum(root.right))
            elif root.right==None:
                if root.left is not None:
                    return (root.value+self.minimum(root.left))
            else:
                if root.right is not None and root.left is not None:
                    return (root.value+ min(self.minimum(root.left),self.minimum(root.right)))

Tree=tree()

for i in range(0,3):
    n=node(int(input()))
    Tree.insert(n)
Tree.display(Tree.root)
print(Tree.minimum(Tree.root))
            
            
