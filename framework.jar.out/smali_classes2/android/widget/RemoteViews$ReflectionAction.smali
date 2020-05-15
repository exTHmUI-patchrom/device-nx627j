.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionAction"
.end annotation


# static fields
.field static final BITMAP:I = 0xc

.field static final BOOLEAN:I = 0x1

.field static final BUNDLE:I = 0xd

.field static final BYTE:I = 0x2

.field static final CHAR:I = 0x8

.field static final CHAR_SEQUENCE:I = 0xa

.field static final COLOR_STATE_LIST:I = 0xf

.field static final DOUBLE:I = 0x7

.field static final FLOAT:I = 0x6

.field static final ICON:I = 0x10

.field static final INT:I = 0x4

.field static final INTENT:I = 0xe

.field static final LONG:I = 0x5

.field static final SHORT:I = 0x3

.field static final STRING:I = 0x9

.field static final URI:I = 0xb


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "value"    # Ljava/lang/Object;

    .line 1314
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1315
    iput p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    .line 1316
    iput-object p3, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 1317
    iput p4, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    .line 1318
    iput-object p5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1319
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1321
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    .line 1333
    iget p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1380
    :pswitch_0
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1377
    :pswitch_1
    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1378
    goto/16 :goto_0

    .line 1374
    :pswitch_2
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1375
    goto/16 :goto_0

    .line 1371
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1372
    goto/16 :goto_0

    .line 1368
    :pswitch_4
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1369
    goto/16 :goto_0

    .line 1365
    :pswitch_5
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1366
    goto :goto_0

    .line 1362
    :pswitch_6
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1363
    goto :goto_0

    .line 1359
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1360
    goto :goto_0

    .line 1356
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1357
    goto :goto_0

    .line 1353
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1354
    goto :goto_0

    .line 1350
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1351
    goto :goto_0

    .line 1347
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1348
    goto :goto_0

    .line 1344
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1345
    goto :goto_0

    .line 1341
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1342
    goto :goto_0

    .line 1338
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1339
    goto :goto_0

    .line 1335
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 1336
    nop

    .line 1384
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getParameterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1445
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1479
    const/4 v0, 0x0

    return-object v0

    .line 1477
    :pswitch_0
    const-class v0, Landroid/graphics/drawable/Icon;

    return-object v0

    .line 1475
    :pswitch_1
    const-class v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 1473
    :pswitch_2
    const-class v0, Landroid/content/Intent;

    return-object v0

    .line 1471
    :pswitch_3
    const-class v0, Landroid/os/Bundle;

    return-object v0

    .line 1469
    :pswitch_4
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 1467
    :pswitch_5
    const-class v0, Landroid/net/Uri;

    return-object v0

    .line 1465
    :pswitch_6
    const-class v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1463
    :pswitch_7
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 1461
    :pswitch_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1459
    :pswitch_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1457
    :pswitch_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1455
    :pswitch_b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1453
    :pswitch_c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1451
    :pswitch_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1449
    :pswitch_e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1447
    :pswitch_f
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1485
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1486
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1488
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v1

    .line 1489
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 1493
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Landroid/widget/RemoteViews;->access$400(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #disallowed odex opcode
    #invoke-super-quick {v2, v0, v3}, vtable@63760
    nop

    #unknown opcode: 0x2600
    nop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    nop

    .line 1497
    return-void

    .line 1494
    :catch_0
    move-exception v2

    .line 1495
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v3, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1490
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActionTag()I
    .locals 1

    .line 1545
    const/4 v0, 0x2

    return v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 6
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1501
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1502
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->access$600()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    .line 1504
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v1

    .line 1505
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    .line 1510
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v1, v4}, Landroid/widget/RemoteViews;->access$400(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 1512
    .local v2, "method":Ljava/lang/invoke/MethodHandle;
    if-eqz v2, :cond_3

    .line 1513
    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #disallowed odex opcode
    #invoke-super-quick {v2, v0, v3}, vtable@63760
    nop

    sput-byte p15, Landroid/opengl/EGL14;->EGL_FALSE:I

    .line 1514
    .local v3, "endAction":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 1515
    invoke-static {}, Landroid/widget/RemoteViews;->access$600()Landroid/widget/RemoteViews$Action;

    move-result-object v4

    return-object v4

    .line 1518
    :cond_1
    instance-of v4, v3, Landroid/view/ViewStub$ViewReplaceRunnable;

    if-eqz v4, :cond_2

    .line 1519
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 1521
    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v4}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/view/ViewStub$ViewReplaceRunnable;

    iget-object v5, v5, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/RemoteViews$ViewTree;->replaceView(Landroid/view/View;)V

    .line 1524
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews$RunnableAction;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1529
    .end local v2    # "method":Ljava/lang/invoke/MethodHandle;
    .end local v3    # "endAction":Ljava/lang/Runnable;
    :cond_3
    nop

    .line 1531
    return-object p0

    .line 1527
    :catch_0
    move-exception v2

    .line 1528
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v3, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1506
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_4
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public mergeBehavior()I
    .locals 2

    .line 1536
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const-string/jumbo v1, "smoothScrollBy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    const/4 v0, 0x1

    return v0

    .line 1539
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prefersAsyncApply()Z
    .locals 2

    .line 1557
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

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

.method public visitUris(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1562
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 1569
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1564
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 1565
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1566
    nop

    .line 1572
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1387
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1389
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1430
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1431
    goto/16 :goto_0

    .line 1437
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1438
    goto/16 :goto_0

    .line 1427
    :pswitch_2
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1428
    goto :goto_0

    .line 1424
    :pswitch_3
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1425
    goto :goto_0

    .line 1421
    :pswitch_4
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    goto :goto_0

    .line 1418
    :pswitch_5
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1419
    goto :goto_0

    .line 1415
    :pswitch_6
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1416
    goto :goto_0

    .line 1412
    :pswitch_7
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1413
    goto :goto_0

    .line 1409
    :pswitch_8
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    goto :goto_0

    .line 1406
    :pswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    goto :goto_0

    .line 1403
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1404
    goto :goto_0

    .line 1400
    :pswitch_b
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1401
    nop

    .line 1442
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
