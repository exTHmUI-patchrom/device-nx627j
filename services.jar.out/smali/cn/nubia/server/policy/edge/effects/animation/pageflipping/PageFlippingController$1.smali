.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setGuideCancelAnimationCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 118
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 12

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 129
    .local v0, "fitAnimState":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v1

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 130
    .local v1, "direct":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget v8, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDownY:F

    .line 131
    .local v8, "downY":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget v9, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mCurrY:F

    .line 132
    .local v9, "currY":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget-object v10, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 133
    .local v10, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$102(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z

    .line 135
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 163
    .local v2, "factor":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    .line 164
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3, v1, v8, v9, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;)V

    .line 165
    goto :goto_0

    .line 158
    .end local v2    # "factor":F
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 159
    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 153
    .restart local v2    # "factor":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    .line 154
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3, v1, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;ILjava/util/List;)V

    .line 155
    goto :goto_0

    .line 147
    .end local v2    # "factor":F
    :pswitch_4
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    move-result-object v2

    iget v11, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 148
    .local v11, "factor":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    move v3, v1

    move v4, v8

    move v5, v9

    move-object v6, v10

    move v7, v11

    invoke-static/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;F)V

    .line 149
    goto :goto_0

    .line 143
    .end local v11    # "factor":F
    :pswitch_5
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_6
    nop

    .line 171
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
