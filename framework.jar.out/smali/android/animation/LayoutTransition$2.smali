.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$anim:Landroid/animation/Animator;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$duration:J

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;

    .line 883
    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object v0, p0

    .line 888
    iget-object v1, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->setupEndValues()V

    .line 889
    iget-object v1, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    .line 890
    const/4 v1, 0x0

    .line 891
    .local v1, "valuesDiffer":Z
    iget-object v2, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 892
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 893
    .local v3, "oldValues":[Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 894
    aget-object v5, v3, v4

    .line 895
    .local v5, "pvh":Landroid/animation/PropertyValuesHolder;
    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v6, v6, Landroid/animation/KeyframeSet;

    if-eqz v6, :cond_2

    .line 896
    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v6, Landroid/animation/KeyframeSet;

    .line 897
    .local v6, "keyframeSet":Landroid/animation/KeyframeSet;
    iget-object v7, v6, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 899
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v6, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 900
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 899
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 901
    :cond_0
    const/4 v1, 0x1

    .line 903
    .end local v6    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v7, v8}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 904
    const/4 v1, 0x1

    .line 893
    .end local v5    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 907
    .end local v4    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 908
    return-void

    .line 912
    .end local v1    # "valuesDiffer":Z
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "oldValues":[Landroid/animation/PropertyValuesHolder;
    :cond_5
    const-wide/16 v1, 0x0

    .line 913
    .local v1, "startDelay":J
    iget v3, v0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 930
    :pswitch_0
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1000(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    .line 931
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$1100(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->access$214(Landroid/animation/LayoutTransition;J)J

    .line 932
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-static {}, Landroid/animation/LayoutTransition;->access$1300()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 933
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 922
    :pswitch_1
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$600(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    .line 923
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$700(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->access$214(Landroid/animation/LayoutTransition;J)J

    .line 924
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    .line 925
    invoke-static {}, Landroid/animation/LayoutTransition;->access$900()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 926
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 915
    :pswitch_2
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    .line 916
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->access$214(Landroid/animation/LayoutTransition;J)J

    .line 917
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-static {}, Landroid/animation/LayoutTransition;->access$500()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 918
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 937
    :cond_6
    :goto_2
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 938
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-wide v4, v0, Landroid/animation/LayoutTransition$2;->val$duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 940
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1400(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 941
    .local v3, "prevAnimation":Landroid/animation/Animator;
    if-eqz v3, :cond_7

    .line 942
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 944
    :cond_7
    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 945
    .local v4, "pendingAnimation":Landroid/animation/Animator;
    if-eqz v4, :cond_8

    .line 946
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :cond_8
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$1400(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iget-object v7, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 955
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 956
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
