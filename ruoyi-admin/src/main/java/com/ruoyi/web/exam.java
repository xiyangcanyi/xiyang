package com.ruoyi.web;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zyp
 * @create 2023-04-27 19:36
 */
public class exam {
    public static void main(String[] args) {

    }

    public ArrayList<ArrayList<Integer>> factorization (int n) {
        ArrayList<ArrayList<Integer>> res=new ArrayList<>();

        for (int i = 2; i <=Math.sqrt(n) ; i++) {
            ArrayList<Integer> list=new ArrayList<>();
            if(n%i!=0){
                continue;
            }
            int a=i,b=0;
            while (n%i==0){
                n/=i;
                b++;
            }
            list.add(a);
            list.add(b);
            res.add(list);
        }

        return res;
    }
}


 class Point {
  int x;
    int y;
  public Point(int x, int y) {
     this.x = x;
  this.y = y;
 }
 }

 class Solution22 {
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     *
     *
     * @param points Point类ArrayList
     * @return int整型
     */
    public int triangles (ArrayList<Point> points) {
        // write code here

        int k1=(points.get(1).y-points.get(0).y)*(points.get(2).x-points.get(0).x);
        int k2=(points.get(2).y-points.get(0).y)*(points.get(1).x-points.get(0).x);
        if(k2==k1){
            return 0;
        }
       if( Math.abs(points.get(0).x*points.get(1).y
                +points.get(1).x*points.get(2).y
                + points.get(2).x*points.get(0).y
                - points.get(0).y*points.get(1).x
                -points.get(1).y*points.get(2).x
                -points.get(2).y*points.get(0).x)>0){
           return 1;
       }
       return 0;
    }

     public ListNode ReverseList(ListNode head) {
         ListNode pre=head;
         ListNode p=head.next;
         ListNode q;
         while (p!=null){
             q=p;
             p=p.next;
             q.next=head;
             head=q;

         }
         pre.next=null;
         return head;

     }
     public static void main(String[] args) {

         ListNode a = new ListNode(1);
         ListNode b = new ListNode(2);
         ListNode c = new ListNode(3);
         ListNode d = new ListNode(4);
         ListNode e = new ListNode(5);
         a.next = b;
         b.next = c;
         c.next = d;
         d.next = e;
         new Solution22().ReverseList(a);
         while (e != null) {
             System.out.println(e.val);
             e = e.next;
         }
     }

 }
 class ListNode {
    int val;
    ListNode next = null;

    ListNode(int val) {
        this.val = val;
    }
}




