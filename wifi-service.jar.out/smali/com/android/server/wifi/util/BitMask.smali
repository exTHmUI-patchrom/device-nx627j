.class public Lcom/android/server/wifi/util/BitMask;
.super Ljava/lang/Object;
.source "BitMask.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    .line 27
    return-void
.end method


# virtual methods
.method public testAndClear(I)Z
    .locals 3
    .param p1, "maskBit"    # I

    .line 36
    iget v0, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "ans":Z
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    .line 38
    return v0
.end method
