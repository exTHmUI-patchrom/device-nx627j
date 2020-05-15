.class Lcom/android/server/am/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchParams"
.end annotation


# instance fields
.field final mBounds:Landroid/graphics/Rect;

.field mPreferredDisplayId:I

.field mWindowingMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 214
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 218
    .local v2, "that":Lcom/android/server/am/LaunchParamsController$LaunchParams;
    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v4, :cond_2

    return v1

    .line 219
    :cond_2
    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v3, v4, :cond_3

    return v1

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 214
    .end local v2    # "that":Lcom/android/server/am/LaunchParamsController$LaunchParams;
    :cond_6
    :goto_1
    return v1
.end method

.method hasPreferredDisplay()Z
    .locals 2

    .line 208
    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasWindowingMode()Z
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, "result":I
    :goto_0
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    add-int/2addr v2, v3

    .line 227
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v1, v0

    .line 228
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method isEmpty()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 188
    return-void
.end method

.method set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 192
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 194
    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 195
    return-void
.end method
