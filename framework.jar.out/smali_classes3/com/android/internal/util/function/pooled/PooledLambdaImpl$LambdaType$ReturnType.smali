.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
.super Ljava/lang/Object;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReturnType"
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x2

.field public static final DOUBLE:I = 0x6

.field public static final INT:I = 0x4

.field public static final LONG:I = 0x5

.field public static final OBJECT:I = 0x3

.field public static final VOID:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lambdaSuffix(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->suffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 589
    packed-switch p0, :pswitch_data_0

    .line 593
    const-string v0, ""

    return-object v0

    .line 592
    :pswitch_0
    const-string v0, "Double"

    return-object v0

    .line 591
    :pswitch_1
    const-string v0, "Long"

    return-object v0

    .line 590
    :pswitch_2
    const-string v0, "Int"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static suffix(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 598
    packed-switch p0, :pswitch_data_0

    .line 602
    const-string v0, "Supplier"

    return-object v0

    .line 601
    :pswitch_0
    const-string v0, "Function"

    return-object v0

    .line 600
    :pswitch_1
    const-string v0, "Predicate"

    return-object v0

    .line 599
    :pswitch_2
    const-string v0, "Consumer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "returnType"    # I

    .line 573
    packed-switch p0, :pswitch_data_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 579
    :pswitch_0
    const-string v0, "DOUBLE"

    return-object v0

    .line 578
    :pswitch_1
    const-string v0, "LONG"

    return-object v0

    .line 577
    :pswitch_2
    const-string v0, "INT"

    return-object v0

    .line 576
    :pswitch_3
    const-string v0, "OBJECT"

    return-object v0

    .line 575
    :pswitch_4
    const-string v0, "BOOLEAN"

    return-object v0

    .line 574
    :pswitch_5
    const-string v0, "VOID"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
