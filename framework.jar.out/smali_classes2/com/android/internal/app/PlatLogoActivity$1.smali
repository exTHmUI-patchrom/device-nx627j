.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final TOUCH_STATS:Ljava/lang/String;

.field maxPointers:I

.field final pc0:Landroid/view/MotionEvent$PointerCoords;

.field final pc1:Landroid/view/MotionEvent$PointerCoords;

.field pressure_max:D

.field pressure_min:D

.field tapCount:I

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;

    .line 189
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-string/jumbo p2, "touch.stats"

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->TOUCH_STATS:Ljava/lang/String;

    .line 192
    new-instance p2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    .line 193
    new-instance p2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    .line 202
    .local v0, "pressure":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 220
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "touch.stats"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "touchDataJson":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    .line 222
    if-eqz v1, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "{}"

    :goto_0
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, "touchData":Lorg/json/JSONObject;
    const-string/jumbo v5, "min"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    const-string/jumbo v7, "min"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    .line 226
    :cond_1
    const-string/jumbo v5, "max"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    const-string/jumbo v7, "max"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    .line 229
    :cond_2
    const-string/jumbo v5, "min"

    iget-wide v6, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 230
    const-string/jumbo v5, "max"

    iget-wide v6, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 231
    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v6, "touch.stats"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "touchDataJson":Ljava/lang/String;
    .end local v4    # "touchData":Lorg/json/JSONObject;
    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PlatLogoActivity"

    const-string v5, "Can\'t write touch settings"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->maxPointers:I

    if-ne v1, v3, :cond_4

    .line 237
    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->tapCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->tapCount:I

    .line 238
    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->tapCount:I

    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    goto :goto_2

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->access$000(Lcom/android/internal/app/PlatLogoActivity;)V

    goto :goto_2

    .line 244
    :cond_4
    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->tapCount:I

    .line 246
    :goto_2
    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->maxPointers:I

    goto :goto_3

    .line 204
    :pswitch_1
    float-to-double v4, v0

    iput-wide v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    iput-wide v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    .line 207
    :pswitch_2
    float-to-double v4, v0

    iget-wide v6, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_5

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_min:D

    .line 208
    :cond_5
    float-to-double v4, v0

    iget-wide v6, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_6

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pressure_max:D

    .line 209
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 210
    .local v1, "pc":I
    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->maxPointers:I

    if-le v1, v4, :cond_7

    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->maxPointers:I

    .line 211
    :cond_7
    if-le v1, v3, :cond_8

    .line 212
    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v2, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 213
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 214
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setRadius(F)V

    .line 249
    .end local v1    # "pc":I
    :cond_8
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
