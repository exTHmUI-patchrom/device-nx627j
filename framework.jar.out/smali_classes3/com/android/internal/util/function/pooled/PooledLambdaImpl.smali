.class final Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.super Lcom/android/internal/util/function/pooled/OmniFunction;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;,
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/function/pooled/OmniFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL:I = 0x80

.field private static final FLAG_RECYCLED:I = 0x20

.field private static final FLAG_RECYCLE_ON_USE:I = 0x40

.field private static final LOG_TAG:Ljava/lang/String; = "PooledLambdaImpl"

.field static final MASK_EXPOSED_AS:I = 0x3f00

.field static final MASK_FUNC_TYPE:I = 0xfc000

.field private static final MAX_ARGS:I = 0x5

.field private static final MAX_POOL_SIZE:I = 0x32

.field static final sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

.field static final sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;


# instance fields
.field mArgs:[Ljava/lang/Object;

.field mConstValue:J

.field mFlags:I

.field mFunc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 71
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 73
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result v0

    return v0
.end method

.method static acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 3
    .param p0, "pool"    # Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    .param p1, "func"    # Ljava/lang/Object;
    .param p2, "fNumArgs"    # I
    .param p3, "numPlaceholders"    # I
    .param p4, "fReturnType"    # I
    .param p5, "a"    # Ljava/lang/Object;
    .param p6, "b"    # Ljava/lang/Object;
    .param p7, "c"    # Ljava/lang/Object;
    .param p8, "d"    # Ljava/lang/Object;
    .param p9, "e"    # Ljava/lang/Object;
    .param p10, "f"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/internal/util/function/pooled/PooledLambda;",
            ">(",
            "Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;",
            "Ljava/lang/Object;",
            "III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 400
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 416
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-object p1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 417
    invoke-static {p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v1

    const v2, 0xfc000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 418
    invoke-static {p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v1

    const/16 v2, 0x3f00

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 419
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-ge v1, p2, :cond_0

    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 420
    :cond_0
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 421
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 422
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v1, v2, p7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 423
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v1, v2, p8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 424
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v1, v2, p9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 425
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v1, v2, p10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 426
    return-object v0
.end method

.method static acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3
    .param p0, "pool"    # Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    .line 439
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    invoke-direct {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;-><init>()V

    move-object v0, v1

    .line 440
    :cond_0
    iget v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 441
    const/16 v1, 0x80

    .line 442
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    if-ne p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 441
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 443
    return-object v0
.end method

.method static acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3
    .param p0, "type"    # I

    .line 430
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 431
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v1

    .line 432
    .local v1, "lambdaType":I
    const v2, 0xfc000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 433
    const/16 v2, 0x3f00

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 434
    return-object v0
.end method

.method private checkNotRecycled()V
    .locals 3

    .line 211
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance is recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p1, "arr"    # [Ljava/lang/Object;
    .param p2, "n"    # I

    .line 374
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 375
    :cond_0
    const-string v0, ","

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doInvoke()Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    move-object/from16 v0, p0

    const v1, 0xfc000

    invoke-virtual {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v1

    .line 217
    .local v1, "funcType":I
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    .line 218
    .local v2, "argCount":I
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v3

    .line 220
    .local v3, "returnType":I
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 222
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    .line 226
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v4

    .line 225
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 224
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 223
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 320
    :pswitch_4
    const/4 v10, 0x5

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    .line 331
    :pswitch_5
    iget-object v5, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Lcom/android/internal/util/function/HexFunction;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    .line 332
    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v16

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 331
    invoke-interface/range {v11 .. v17}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 327
    :pswitch_6
    iget-object v5, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Lcom/android/internal/util/function/HexPredicate;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v12

    .line 328
    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v16

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 327
    invoke-interface/range {v11 .. v17}, Lcom/android/internal/util/function/HexPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 322
    :pswitch_7
    iget-object v11, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Lcom/android/internal/util/function/HexConsumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    .line 323
    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v16

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 322
    invoke-interface/range {v12 .. v18}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    return-object v5

    .line 302
    :pswitch_8
    packed-switch v3, :pswitch_data_3

    .line 317
    goto/16 :goto_0

    .line 313
    :pswitch_9
    iget-object v5, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Lcom/android/internal/util/function/QuintFunction;

    .line 314
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    .line 313
    invoke-interface/range {v10 .. v15}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 309
    :pswitch_a
    iget-object v5, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Lcom/android/internal/util/function/QuintPredicate;

    .line 310
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    .line 309
    invoke-interface/range {v10 .. v15}, Lcom/android/internal/util/function/QuintPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 304
    :pswitch_b
    iget-object v10, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Lcom/android/internal/util/function/QuintConsumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v13

    .line 305
    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v16

    .line 304
    invoke-interface/range {v11 .. v16}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-object v5

    .line 285
    :pswitch_c
    packed-switch v3, :pswitch_data_4

    .line 299
    goto/16 :goto_0

    .line 295
    :pswitch_d
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadFunction;

    .line 296
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    .line 295
    invoke-interface {v4, v5, v8, v7, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 291
    :pswitch_e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadPredicate;

    .line 292
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    .line 291
    invoke-interface {v4, v5, v8, v7, v6}, Lcom/android/internal/util/function/QuadPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 287
    :pswitch_f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadConsumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v9, v8, v7, v6}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    return-object v5

    .line 270
    :pswitch_10
    packed-switch v3, :pswitch_data_5

    .line 283
    goto/16 :goto_0

    .line 280
    :pswitch_11
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriFunction;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 276
    :pswitch_12
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriPredicate;

    .line 277
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    .line 276
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 272
    :pswitch_13
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriConsumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v8, v7}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    return-object v5

    .line 256
    :pswitch_14
    packed-switch v3, :pswitch_data_6

    .line 268
    goto/16 :goto_0

    .line 265
    :pswitch_15
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiFunction;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 262
    :pswitch_16
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiPredicate;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 258
    :pswitch_17
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    return-object v5

    .line 242
    :pswitch_18
    packed-switch v3, :pswitch_data_7

    .line 254
    goto :goto_0

    .line 251
    :pswitch_19
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Function;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 248
    :pswitch_1a
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Predicate;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 244
    :pswitch_1b
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Consumer;

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 245
    return-object v5

    .line 230
    :pswitch_1c
    packed-switch v3, :pswitch_data_8

    .line 240
    goto :goto_0

    .line 237
    :pswitch_1d
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 232
    :pswitch_1e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 233
    return-object v5

    .line 337
    :goto_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown function type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method private doRecycle()V
    .locals 3

    .line 148
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 152
    .local v0, "pool":Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    :cond_1
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 155
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->release(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method private fillInArg(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "invocationArg"    # Ljava/lang/Object;

    .line 195
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 196
    .local v0, "argsSize":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 197
    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne v3, v4, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 199
    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v3, v1

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 200
    const/4 v1, 0x1

    return v1

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_1
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more arguments expected for provided arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " among "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 205
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_3
    :goto_1
    return v1
.end method

.method private getFuncTypeAsString()Ljava/lang/String;
    .locals 4

    .line 383
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 384
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "supplier"

    return-object v0

    .line 385
    :cond_0
    const/16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "name":Ljava/lang/String;
    const-string v1, "Consumer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "consumer"

    return-object v1

    .line 387
    :cond_1
    const-string v1, "Function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "function"

    return-object v1

    .line 388
    :cond_2
    const-string v1, "Predicate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "predicate"

    return-object v1

    .line 389
    :cond_3
    const-string v1, "Supplier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "supplier"

    return-object v1

    .line 390
    :cond_4
    const-string v1, "Runnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "runnable"

    return-object v1

    .line 391
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know the string representation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isConstSupplier()Z
    .locals 2

    .line 341
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    const v0, 0xfc000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInvocationArgAtIndex(I)Z
    .locals 3
    .param p1, "argIndex"    # I

    .line 492
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRecycleOnUse()Z
    .locals 1

    .line 488
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecycled()Z
    .locals 1

    .line 484
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static mask(II)I
    .locals 1
    .param p0, "mask"    # I
    .param p1, "value"    # I

    .line 508
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shl-int v0, p1, v0

    and-int/2addr v0, p0

    return v0
.end method

.method private popArg(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .line 345
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 346
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isInvocationArgAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    aput-object v2, v1, p1

    .line 348
    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 350
    :cond_0
    return-object v0
.end method

.method private static setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "a"    # Ljava/lang/Object;

    .line 447
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    aput-object p2, p0, p1

    .line 448
    :cond_0
    return-void
.end method

.method private static unmask(II)I
    .locals 3
    .param p0, "mask"    # I
    .param p1, "bits"    # I

    .line 515
    and-int v0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public getAsDouble()D
    .locals 2

    .line 463
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAsInt()I
    .locals 2

    .line 468
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    long-to-int v0, v0

    return v0
.end method

.method public getAsLong()J
    .locals 2

    .line 473
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-wide v0
.end method

.method getFlags(I)I
    .locals 1
    .param p1, "mask"    # I

    .line 496
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result v0

    return v0
.end method

.method invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;
    .param p3, "a3"    # Ljava/lang/Object;
    .param p4, "a4"    # Ljava/lang/Object;
    .param p5, "a5"    # Ljava/lang/Object;
    .param p6, "a6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->checkNotRecycled()V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 172
    .local v0, "notUsed":Z
    :goto_0
    const v2, 0xfc000

    invoke-virtual {p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    .line 173
    .local v2, "argCount":I
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 174
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 175
    iget-object v4, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v4, v4, v3

    sget-object v5, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-eq v4, v5, :cond_1

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing argument #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " among "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 177
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 186
    iget-object v4, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v4

    .line 187
    .local v4, "argsSize":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 188
    invoke-direct {p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    .end local v1    # "i":I
    .end local v4    # "argsSize":I
    :cond_4
    return-object v3

    .line 184
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 186
    iget-object v4, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v4

    .line 187
    .restart local v4    # "argsSize":I
    nop

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 188
    invoke-direct {p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 190
    .end local v1    # "i":I
    .end local v4    # "argsSize":I
    :cond_6
    throw v3
.end method

.method public negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic negate()Ljava/util/function/BiPredicate;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 143
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 144
    :cond_0
    return-void
.end method

.method public recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 480
    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # I

    .line 500
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 501
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 502
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;, "Lcom/android/internal/util/function/pooled/PooledLambdaImpl<TR;>;"
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<recycled PooledLambda@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const v2, 0xfc000

    invoke-virtual {p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
