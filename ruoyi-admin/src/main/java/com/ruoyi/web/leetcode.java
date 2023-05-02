package com.ruoyi.web;

import java.util.*;

/**
 * @author zyp
 * @create 2023-04-04 21:41
 */
public class leetcode {
    public static void main(String[] args) {


    }

    public List<List<Integer>> fourSum(int[] nums, int target) {
        Arrays.sort(nums);
        List<List<Integer>> list = new ArrayList<>();
//        int res=nums[0]+nums[1]+nums[1]+nums[2];
        for (int i = 0; i < nums.length; i++) {
            if (nums[0] > target || nums[nums.length - 1] < 0) {
                return list;
            }
            List<Integer> arr = new ArrayList<>();
            int left = i + 1, right = nums.length - 1;
            int temp = nums[i] + nums[left] + nums[right];
            while (left < right) {
                int ans = target - temp;
                if (ans < nums[left] || ans > nums[right]) {
                    break;
                }
                arr.add(nums[i]);
                arr.add(nums[left]);
                arr.add(ans);
                arr.add(nums[right]);
            }
            list.add(arr);

        }
        return list;
    }

    public boolean validateStackSequences(int[] pushed, int[] popped) {
        if (pushed.length == 0 && popped.length == 0) return true;
        Stack<Integer> s = new Stack();
        int n = pushed.length;

        for (int i = 0, j = 0; i < n; i++) {
            s.push(pushed[i]);
            while (!s.isEmpty() && s.peek() == popped[j]) {
                j++;
                s.pop();
            }
        }
        return s.isEmpty();

    }

    public boolean validateStackSequences1(int[] pushed, int[] popped) {
        Stack<Integer> stack = new Stack<>();
        if (pushed.length == 0 && popped.length == 0) return false;
        int n = pushed.length;
        ;
        for (int i = 0, j = 0; i < n; i++) {
            stack.push(pushed[i]);
            while (!stack.isEmpty() && stack.peek() == popped[j]) {
                j++;
                stack.pop();
            }
        }
        if (stack.isEmpty()) {
            return true;
        } else {
            return false;
        }
    }

}

class CQueue {
    Stack<Integer> s1;
    Stack<Integer> s2;

    public CQueue() {
        s1 = new Stack<>();
        s2 = new Stack<>();
    }

    public void appendTail(int value) {
        s1.push(value);
    }

    public int deleteHead() {
        if (s2.isEmpty()) {
            if (s1.isEmpty()) {
                return -1;
            }

            while (!s1.isEmpty()) {
                s2.push(s1.pop());
            }
        }
        return s2.pop();
    }

}

/**
 * Your CQueue object will be instantiated and called as such:
 * CQueue obj = new CQueue();
 * obj.appendTail(value);
 * int param_2 = obj.deleteHead();
 */

class MinStack {
    Stack<Integer> stack;
    Stack<Integer> minStack;

    /**
     * initialize your data structure here.
     */
    public MinStack() {
        stack = new Stack<>();
        minStack = new Stack<>();
        minStack.push(Integer.MAX_VALUE);
    }

    public void push(int x) {
        stack.push(x);
        minStack.push(Math.min(minStack.peek(), x));
    }

    public void pop() {
        stack.pop();
        minStack.pop();
    }

    public int top() {
        return stack.peek();
    }

    public int min() {
        return minStack.peek();
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = new MinStack();
 * obj.push(x);
 * obj.pop();
 * int param_3 = obj.top();
 * int param_4 = obj.min();
 */

class MyQueue {

    Stack<Integer> instack;
    Stack<Integer> outStack;

    /**
     * Initialize your data structure here.
     */
    public MyQueue() {
        instack = new Stack<>();
        outStack = new Stack<>();
    }

    /**
     * Push element x to the back of queue.
     */
    public void push(int x) {
        instack.push(x);
    }

    /**
     * Removes the element from in front of queue and returns that element.
     */
    public int pop() {
        while (!instack.empty() && outStack.empty()) {
            outStack.push(instack.pop());
        }
        return outStack.pop();

    }

    /**
     * Get the front element.
     */
    public int peek() {
        while (!instack.isEmpty() && outStack.empty()) {
            outStack.push(instack.pop());
        }
        return outStack.peek();

    }

    /**
     * Returns whether the queue is empty.
     */
    public boolean empty() {
        return instack.isEmpty() && outStack.isEmpty();
    }
}

class MyStack {
    Queue<Integer> inqueue;
    Queue<Integer> outqueue;

    public MyStack() {
        inqueue = new ArrayDeque<>();
        outqueue = new ArrayDeque<>();
    }

    public void push(int x) {
        inqueue.offer(x);
        while (!outqueue.isEmpty()) {
            inqueue.offer(outqueue.poll());

        }
        Queue queue = inqueue;
        inqueue = outqueue;
        outqueue = queue;
    }

    public int pop() {

        return outqueue.poll();
    }

    public int top() {

        return outqueue.peek();
    }

    public boolean empty() {
        return outqueue.isEmpty();
    }
}

//   Definition for a binary tree node.
class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;

    TreeNode() {
    }

    TreeNode(int val) {
        this.val = val;
    }

    TreeNode(int val, TreeNode left, TreeNode right) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}

class Solution {
    public TreeNode buildTree(int[] preorder, int[] inorder) {
        int[] post = new int[preorder.length];
        int k = 0;
        for (int i = preorder.length - 1; i >= 0; i++) {
            post[k++] = preorder[i];
        }
        return createTree(preorder, 0, preorder.length, inorder, 0, inorder.length);
    }

    TreeNode createTree(int[] preorder, int p_start, int p_end,
                        int[] inorder, int i_start, int i_end) {

        if (p_start == p_end) {
            return null;
        }
        int root_val = preorder[p_start];
        TreeNode root = new TreeNode(root_val);
        int i_root_index = 0;
        for (int i = i_start; i < i_end; i++) {
            if (inorder[i] == root.val) {
                i_root_index = i;
                break;
            }
        }
        int leftNum = i_root_index - i_start;

        root.left = createTree(preorder, p_start + 1, p_start + leftNum + 1, inorder, i_start, i_start + leftNum + 1);
        root.right = createTree(preorder, p_start + leftNum + 1, p_end, inorder, i_start + leftNum + 1, i_end);
        return root;

    }
}

class Solution1 {
    public TreeNode buildTree(int[] inorder, int[] postorder) {
        int[] post = new int[postorder.length];
        int k = 0;
        for (int i = postorder.length - 1; i >= 0; i++) {
            post[k++] = postorder[i];
        }
        return createTree(post, 0, postorder.length, inorder, 0, inorder.length);
    }

    TreeNode createTree(int[] postorder, int p_start, int p_end,
                        int[] inorder, int i_start, int i_end) {

        if (p_start == p_end) {
            return null;
        }
        int root_val = postorder[p_start];
        TreeNode root = new TreeNode(root_val);
        int i_root_index = 0;
        for (int i = i_start; i < i_end; i++) {
            if (inorder[i] == root.val) {
                i_root_index = i;
                break;
            }
        }
        int leftNum = i_root_index - i_start;

        root.right = createTree(postorder, p_start + 1, p_start + leftNum + 1, inorder, i_start, i_start + leftNum + 1);
        root.left = createTree(postorder, p_start + leftNum + 1, p_end, inorder, i_start + leftNum + 1, i_end);
        return root;

    }
}

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 * int val;
 * TreeNode left;
 * TreeNode right;
 * TreeNode() {}
 * TreeNode(int val) { this.val = val; }
 * TreeNode(int val, TreeNode left, TreeNode right) {
 * this.val = val;
 * this.left = left;
 * this.right = right;
 * }
 * }
 */
class Solution4 {
    public static void main(String[] args) {
        Solution4 solution4=new Solution4();
//        String s="a good   example";
//        String s="AB";
//        System.out.println(solution4.reverseWords(s));
        int n=701;
//        solution4.convertToTitle(n);
//        System.out.println(solution4.titleToNumber(s));
        int[] nums = new int[]{};
        int target=0;
        solution4.searchRange(nums,target);
    }
    public int sumNumbers(TreeNode root) {
        return dfs(root,0);
    }

    private int dfs(TreeNode root, int preSum) {
        if(root==null){return 0;}
        int sum;
        sum=preSum*10+ root.val;
        if(root.left==null&&root.right==null){
            return sum;
        }else{
            return dfs(root.left, sum)+dfs(root.right,sum);
        }

    }

    public String reverseWords(String s) {
        int end=s.length()-1;
        while (s.charAt(end)==' '){
            end--;
        }
        StringBuilder sb1=new StringBuilder();
        for (int i = 0; i <= end; i++) {
            sb1.append(s.charAt(i));
        }
        sb1.reverse();
//        String s1= sb1.toString();
        end=sb1.length()-1;
        while (sb1.charAt(end)==' '){
            end--;
        }

        int left=0;
        int right=0;
        StringBuilder builder = new StringBuilder(end);
        while (right<=end){
            if(sb1.charAt(right)!=' '){
                right++;
            }else{
                StringBuilder sb2= new StringBuilder(sb1.substring(left, right));
                sb2.reverse();
                left=right+1;
                right++;
                builder.append(sb2+" ");
            }

        }
        StringBuilder sb2=new StringBuilder(sb1.substring(left,end+1)).reverse();
        builder.append(sb2);
        for (int i = 0; i < builder.length()-1; i++) {
            if(builder.charAt(i)==' '&&builder.charAt(i+1)==' '){
                builder.replace(i+1,i+2,"");

            }
        }
        return builder.toString().replaceAll(" {2,}"," ");
    }
    public int maxProduct(int[] nums) {
        if(nums.length==0) return 0;
        if(nums.length==1) return nums[0];
        int left=0;
        int right=left+1;
        int max=Integer.MIN_VALUE;
        for (int i = 0; i < nums.length; i++) {
            if(nums[right]>0&&nums[left]>0&&nums[left]*nums[right]>max) {
                max=nums[right]*nums[left];
                right++;
            }
           else if(nums[right]<0&&nums[left]<0&&nums[left]*nums[right]>max) {
                max=nums[right]*nums[left];
               right++;}
           else if(nums[right]>0&&nums[left]<0&&nums[left]*nums[right]>max){
                max=nums[right]*nums[left];
                right++;
                left++;
            } else {
                max=nums[right]*nums[left];
               right++;
               left++;
            }

        }
        return max;
    }

    public int findMin(int[] nums) {
        int left=0;
        int right= nums.length-1;
        int mid;
        int min=Integer.MIN_VALUE;
        while (left<=right){
            mid=(left+right)/2;
            if(nums[mid]<nums[right]){
                right=mid;
            }else {
                left=mid;
            }
        }
        return nums[left];

    }

    public class Solution {
        public int reverseBits(int n) {
            int rev = 0;
            for (int i = 0; i < 32 && n != 0; ++i) {
                rev =rev | ((n & 1) << (31 - i));
                n >>>= 1;
            }
            return rev;
        }
    }

    public int titleToNumber(String columnTitle) {
        Stack<Character> stack = new Stack<>();
        for (int i = 0; i < columnTitle.length(); i++) {
            stack.push(columnTitle.charAt(i));
        }
        Map<Character,Integer> map=new HashMap<>();
        char c='A';
        for (int i = 1; i <= 26; i++) {
            map.put(c,i);
            int k=(int)c;
            k++;
            c=(char) k;
        }
        int sum=0;
        int k=1;
        while (!stack.isEmpty()){
            sum+=map.get(stack.pop())*k;
            k*=26;
        }
        return sum;

    }

    public String convertToTitle(int columnNumber) {



        int m;

        Stack<Character> stack = new Stack<>();
        while (columnNumber>0){
            columnNumber--;
            m=columnNumber%26;
            stack.push((char)(m+(int)'A'));
            columnNumber-=m;
            columnNumber/=26;
        }
        StringBuilder sb=new StringBuilder();
        while (!stack.isEmpty()){
            sb.append(stack.pop());
        }
        return sb.toString();
    }
    public int[] searchRange(int[] nums, int target) {
        int[] arr=new int[]{-1,-1};
        int low=0;
        int high=nums.length-1;
        int mid;
        while (low<=high){
            mid=(low+high)/2;
            if(nums[mid]<target){
               low=mid+1;
            }else if(nums[mid]>target){
                high=mid-1;
            }else {
                if(nums[low]!=nums[mid]){
                    low++;
                }else if(nums[high]!=nums[mid]){
                    high--;
                }else {
                    arr[0]=low;
                    arr[1]=high;
                }
            }
        }
        return arr;
    }
}