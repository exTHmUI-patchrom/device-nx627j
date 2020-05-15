.class Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;
.super Ljava/lang/Object;
.source "MotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/MotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorJudge"
.end annotation


# static fields
.field static final ANGLE_FOR_CALL:F = 7.1f

.field static final ANGLE_NORMAL:F = 1.71f


# instance fields
.field private mGravityStartValue:F

.field private volatile mGravityThreshold:F

.field private mIsBack:Z

.field private mIsFront:Z

.field private mIsGravityDetectStarted:Z

.field private mIsGravityDetectStoped:Z

.field private mLastGravityZ:F

.field private mLastLogTime:J

.field final synthetic this$0:Lcn/nubia/server/screenswitch/MotionDetector;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/MotionDetector;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const p1, 0x3fdae148    # 1.71f

    iput p1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/MotionDetector;Lcn/nubia/server/screenswitch/MotionDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/MotionDetector$1;

    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;-><init>(Lcn/nubia/server/screenswitch/MotionDetector;)V

    return-void
.end method

.method private getAbsoluteValue(F)F
    .locals 2
    .param p1, "value"    # F

    .line 299
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x7

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "isMainScreen":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    neg-float v1, p1

    :goto_1
    return v1
.end method

.method private getFormatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .line 320
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTmpDisplay(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 245
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyMotionChange(ZF)V
    .locals 5
    .param p1, "manual"    # Z
    .param p2, "gravityz"    # F

    .line 256
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$500(Lcn/nubia/server/screenswitch/MotionDetector;)Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v0

    .line 259
    .local v0, "currentDisplayId":I
    const-string v1, "MotionDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyMotionChange  value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", manual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", currentDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "displayId":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 264
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->isTmpDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const-string v2, "MotionDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do not switch  when display state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 266
    invoke-static {v4}, Lcn/nubia/server/screenswitch/MotionDetector;->access$100(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 269
    :cond_1
    if-eqz v0, :cond_2

    .line 270
    move v2, v3

    nop

    :cond_2
    move v1, v2

    goto :goto_0

    .line 272
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    move v2, v3

    nop

    :cond_4
    move v1, v2

    .line 274
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->access$500(Lcn/nubia/server/screenswitch/MotionDetector;)Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;->onMotionChange(I)V

    .line 275
    return-void
.end method

.method private onAccelChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 165
    return-void
.end method

.method private onGravityChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 168
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$300(Lcn/nubia/server/screenswitch/MotionDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "MotionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity sensorEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->onGravityChangedInAutoMode(Landroid/hardware/SensorEvent;)V

    .line 173
    return-void
.end method

.method private onGravityChangedInAutoMode(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 180
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 181
    .local v0, "rawValue":F
    iput v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastGravityZ:F

    .line 182
    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/MotionDetector;->access$300(Lcn/nubia/server/screenswitch/MotionDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string v1, "MotionDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gravity auto currentDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 184
    invoke-static {v3}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", raw value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mIsFront="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsBack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getAbsoluteValue(F)F

    move-result v1

    .line 188
    .local v1, "value":F
    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_2

    .line 189
    iput-boolean v4, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    .line 190
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    if-nez v2, :cond_3

    .line 191
    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    .line 192
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iput-boolean v4, v2, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 193
    const-string v2, "MotionDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gravity success front currentDisplayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 194
    invoke-static {v5}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", raw value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, v4, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->notifyMotionChange(ZF)V

    goto :goto_0

    .line 198
    :cond_2
    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 199
    iput-boolean v4, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    .line 200
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    if-nez v2, :cond_3

    .line 201
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iput-boolean v4, v2, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 202
    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    .line 203
    const-string v2, "MotionDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gravity success back currentDisplayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 204
    invoke-static {v5}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", raw value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, v4, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->notifyMotionChange(ZF)V

    .line 209
    :cond_3
    :goto_0
    return-void
.end method

.method private onGravityChangedInManualMode(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 212
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastGravityZ:F

    .line 213
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$300(Lcn/nubia/server/screenswitch/MotionDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "MotionDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gravity manual start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", start value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityStartValue:F

    .line 215
    invoke-direct {p0, v3}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    .line 217
    invoke-direct {p0, v3}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    if-eqz v0, :cond_1

    .line 220
    return-void

    .line 221
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    .line 222
    .local v0, "rawValue":F
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getAbsoluteValue(F)F

    move-result v1

    .line 223
    .local v1, "value":F
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 224
    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityStartValue:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_3

    :cond_2
    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityStartValue:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 226
    :cond_3
    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    .line 227
    const-string v2, "MotionDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gravity success manual start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", start value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityStartValue:F

    .line 229
    invoke-direct {p0, v5}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", stop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 232
    invoke-static {v5}, Lcn/nubia/server/screenswitch/MotionDetector;->access$100(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", raw value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, v3, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->notifyMotionChange(ZF)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 238
    iput v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityStartValue:F

    .line 239
    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    .line 242
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 304
    const-string v0, "  SensorJudge"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsGravityDetectStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsGravityDetectStoped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    threshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->getFormatValue(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastGravityZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastGravityZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSwitchMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/MotionDetector;->access$600(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isInCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/MotionDetector;->access$700(Lcn/nubia/server/screenswitch/MotionDetector;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakeUpAndUnlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iget-boolean v1, v1, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    binary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastGravityZ:F

    .line 316
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 253
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 149
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, "now":J
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iget-wide v3, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastLogTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcn/nubia/server/screenswitch/MotionDetector;->access$302(Lcn/nubia/server/screenswitch/MotionDetector;Z)Z

    .line 152
    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->access$300(Lcn/nubia/server/screenswitch/MotionDetector;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iput-wide v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mLastLogTime:J

    .line 156
    .end local v0    # "now":J
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 158
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->onGravityChanged(Landroid/hardware/SensorEvent;)V

    .line 161
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 278
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "MotionDetector"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->resetManual()V

    .line 281
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->resetAuto()V

    .line 282
    return-void
.end method

.method public resetAuto()V
    .locals 3

    .line 292
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "MotionDetector"

    const-string/jumbo v1, "resetAuto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->isTmpDisplay(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iget-boolean v0, v0, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsFront:Z

    .line 295
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iget-boolean v0, v0, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsBack:Z

    .line 296
    return-void
.end method

.method public resetManual()V
    .locals 2

    .line 285
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "MotionDetector"

    const-string/jumbo v1, "resetManual"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStoped:Z

    .line 288
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mIsGravityDetectStarted:Z

    .line 289
    return-void
.end method

.method public setGravityThresHold(F)V
    .locals 0
    .param p1, "value"    # F

    .line 176
    iput p1, p0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->mGravityThreshold:F

    .line 177
    return-void
.end method
