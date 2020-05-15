.class Lcom/android/server/display/NubiaRampAnimator$5;
.super Ljava/lang/Object;
.source "NubiaRampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 805
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$5;, "Lcom/android/server/display/NubiaRampAnimator$5;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 808
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$5;, "Lcom/android/server/display/NubiaRampAnimator$5;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$1200(Lcom/android/server/display/NubiaRampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 809
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/NubiaRampAnimator;->access$2600(Lcom/android/server/display/NubiaRampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    .line 811
    .local v2, "timeDelta":F
    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$2602(Lcom/android/server/display/NubiaRampAnimator;J)J

    .line 817
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    .line 819
    .local v3, "scale":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 821
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2702(Lcom/android/server/display/NubiaRampAnimator;F)F

    goto :goto_1

    .line 823
    :cond_0
    const/4 v4, 0x0

    .line 824
    .local v4, "amount":F
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2800(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    .line 825
    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    sget v6, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-le v5, v6, :cond_1

    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    const/16 v6, 0x6f0

    if-ge v5, v6, :cond_1

    .line 828
    const/high16 v5, 0x43fa0000    # 500.0f

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    goto :goto_0

    .line 830
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$3000(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 832
    .end local v4    # "amount":F
    .local v5, "amount":F
    :goto_0
    sget v4, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    sget v6, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-le v4, v6, :cond_2

    .line 833
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2700(Lcom/android/server/display/NubiaRampAnimator;)F

    move-result v6

    add-float/2addr v6, v5

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2702(Lcom/android/server/display/NubiaRampAnimator;F)F

    goto :goto_1

    .line 835
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2700(Lcom/android/server/display/NubiaRampAnimator;)F

    move-result v6

    sub-float/2addr v6, v5

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2702(Lcom/android/server/display/NubiaRampAnimator;F)F

    .line 838
    .end local v5    # "amount":F
    :goto_1
    sget v4, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 839
    .local v4, "oldCurrentValue":I
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2700(Lcom/android/server/display/NubiaRampAnimator;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 841
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    const/4 v6, 0x0

    if-gez v5, :cond_3

    sput v6, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 843
    :cond_3
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-eq v4, v5, :cond_4

    .line 845
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-static {v5, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$3100(Lcom/android/server/display/NubiaRampAnimator;I)V

    .line 850
    :cond_4
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    if-le v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 851
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v7, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/NubiaRampAnimator;->access$3200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$3002(Lcom/android/server/display/NubiaRampAnimator;I)I

    goto :goto_2

    .line 854
    :cond_5
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    if-ge v5, v7, :cond_6

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 855
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$900(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 856
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const-string/jumbo v7, "persist.sys.brightness.dcSetBrightness.BlackToLight.rate"

    const/16 v8, 0x3c0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$3002(Lcom/android/server/display/NubiaRampAnimator;I)I

    .line 861
    :cond_6
    :goto_2
    sget-boolean v5, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ENABLE:Z

    if-nez v5, :cond_7

    .line 862
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    const/16 v7, 0x45

    if-gt v5, v7, :cond_7

    .line 863
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const/16 v7, 0x50

    sget v8, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr v7, v8

    invoke-static {v5, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$3002(Lcom/android/server/display/NubiaRampAnimator;I)I

    .line 867
    :cond_7
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$3300()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 868
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v8}, Lcom/android/server/display/NubiaRampAnimator;->access$3000(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mCurrentValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mTargetValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_8
    sget v5, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    sget v7, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-eq v5, v7, :cond_9

    .line 872
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$3400(Lcom/android/server/display/NubiaRampAnimator;)V

    goto :goto_3

    .line 874
    :cond_9
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$3502(Lcom/android/server/display/NubiaRampAnimator;Z)Z

    .line 875
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$3600(Lcom/android/server/display/NubiaRampAnimator;)Lcom/android/server/display/NubiaRampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 876
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$5;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$3600(Lcom/android/server/display/NubiaRampAnimator;)Lcom/android/server/display/NubiaRampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/NubiaRampAnimator$Listener;->onAnimationEnd()V

    .line 879
    :cond_a
    :goto_3
    return-void
.end method
