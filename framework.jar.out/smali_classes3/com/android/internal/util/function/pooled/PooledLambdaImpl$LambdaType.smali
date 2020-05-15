.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.super Ljava/lang/Object;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
    }
.end annotation


# static fields
.field public static final MASK:I = 0x3f

.field public static final MASK_ARG_COUNT:I = 0x7

.field public static final MASK_BIT_COUNT:I = 0x6

.field public static final MASK_RETURN_TYPE:I = 0x38


# direct methods
.method constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static argCountPrefix(I)Ljava/lang/String;
    .locals 3
    .param p0, "argCount"    # I

    .line 552
    packed-switch p0, :pswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 559
    :pswitch_1
    const-string v0, "Hex"

    return-object v0

    .line 558
    :pswitch_2
    const-string v0, "Quint"

    return-object v0

    .line 557
    :pswitch_3
    const-string v0, "Quad"

    return-object v0

    .line 556
    :pswitch_4
    const-string v0, "Tri"

    return-object v0

    .line 555
    :pswitch_5
    const-string v0, "Bi"

    return-object v0

    .line 554
    :pswitch_6
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeArgCount(I)I
    .locals 1
    .param p0, "type"    # I

    .line 532
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static decodeReturnType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 536
    const/16 v0, 0x38

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->access$100(II)I

    move-result v0

    return v0
.end method

.method static encode(II)I
    .locals 2
    .param p0, "argCount"    # I
    .param p1, "returnType"    # I

    .line 528
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->access$000(II)I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->access$000(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static toString(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .line 540
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    .line 541
    .local v0, "argCount":I
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v1

    .line 542
    .local v1, "returnType":I
    if-nez v0, :cond_2

    .line 543
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "Runnable"

    return-object v2

    .line 544
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 545
    :cond_1
    const-string v2, "Supplier"

    return-object v2

    .line 548
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->argCountPrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->lambdaSuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
