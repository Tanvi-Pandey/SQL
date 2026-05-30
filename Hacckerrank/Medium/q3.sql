//Binary Tree Nodes

SELECT 
    N,
    CASE
        WHEN P IS NULL THEN 'Root'  //P IS NULL → identifies the root node.
        WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'    //N NOT IN (SELECT P FROM BST) → means the node never appears as a parent, so it's a leaf node.
        ELSE 'Inner'    //Everything else is an inner node.
    END AS NodeType
FROM BST
ORDER BY N;