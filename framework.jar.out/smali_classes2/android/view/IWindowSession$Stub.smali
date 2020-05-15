.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x12

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1b

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1a

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDrag:I = 0x10

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock:I = 0x1c

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x7

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x11

.field static final TRANSACTION_sendWallpaperCommand:I = 0x18

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_startMovingTask:I = 0x1d

.field static final TRANSACTION_updatePointerIcon:I = 0x1e

.field static final TRANSACTION_updateTapExcludeRegion:I = 0x1f

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x19

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 43
    const-string v11, "android.view.IWindowSession"

    .line 44
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_15

    const/4 v8, 0x0

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    .line 752
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 733
    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 737
    .local v7, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 739
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 741
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 743
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 745
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 746
    .local v18, "_arg5":I
    move-object v0, v15

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    return v10

    .line 724
    .end local v7    # "_arg0":Landroid/view/IWindow;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 727
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    return v10

    .line 710
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 714
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 716
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 717
    .local v2, "_arg2":F
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    .line 718
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    return v10

    .line 701
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 704
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    return v10

    .line 691
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 694
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v2

    .line 695
    .local v2, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 697
    return v10

    .line 675
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/view/IWindowId;
    :pswitch_5
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg1":Landroid/graphics/Rect;
    goto :goto_0

    .line 683
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_1
    nop

    .line 685
    .restart local v0    # "_arg1":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    return v10

    .line 659
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 663
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 667
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_2
    nop

    .line 669
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    return v10

    .line 626
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 630
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 632
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 634
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 636
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 638
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 639
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 642
    .local v6, "_arg5":Landroid/os/Bundle;
    :goto_2
    move-object v6, v0

    goto :goto_3

    .end local v6    # "_arg5":Landroid/os/Bundle;
    :cond_3
    goto :goto_2

    .line 645
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v7, v10

    goto :goto_4

    :cond_4
    move v7, v8

    .line 646
    .local v7, "_arg6":Z
    :goto_4
    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 647
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v0, :cond_5

    .line 649
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 653
    :cond_5
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    :goto_5
    return v10

    .line 613
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Z
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    :pswitch_8
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 617
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    return v10

    .line 604
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    return v10

    .line 587
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 591
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 593
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 595
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 597
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 598
    .local v16, "_arg4":F
    move-object v0, v15

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    return v10

    .line 578
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    .end local v16    # "_arg4":F
    :pswitch_b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 581
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    return v10

    .line 569
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 572
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    return v10

    .line 560
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 563
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    return v10

    .line 549
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 553
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v8, v10

    nop

    :cond_6
    move v1, v8

    .line 554
    .local v1, "_arg1":Z
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v10

    .line 513
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 517
    .local v16, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 519
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 520
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 523
    .local v1, "_arg2":Landroid/view/SurfaceControl;
    move-object v3, v1

    goto :goto_6

    .end local v1    # "_arg2":Landroid/view/SurfaceControl;
    :cond_7
    move-object v3, v0

    .line 526
    .local v3, "_arg2":Landroid/view/SurfaceControl;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 528
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 530
    .local v19, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 532
    .local v20, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 534
    .local v21, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 536
    .local v22, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 537
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 540
    .local v9, "_arg8":Landroid/content/ClipData;
    :goto_7
    move-object v9, v0

    goto :goto_8

    .end local v9    # "_arg8":Landroid/content/ClipData;
    :cond_8
    goto :goto_7

    .line 542
    .restart local v9    # "_arg8":Landroid/content/ClipData;
    :goto_8
    move-object v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 543
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 545
    return v10

    .line 499
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/SurfaceControl;
    .end local v9    # "_arg8":Landroid/content/ClipData;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":F
    .end local v20    # "_arg5":F
    .end local v21    # "_arg6":F
    .end local v22    # "_arg7":F
    :pswitch_10
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 503
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v8, v10

    nop

    :cond_9
    move v2, v8

    .line 506
    .local v2, "_arg2":Z
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v3

    .line 507
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    return v10

    .line 491
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    .line 493
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    return v10

    .line 482
    .end local v0    # "_result":Z
    :pswitch_12
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v8, v10

    nop

    :cond_a
    move v0, v8

    .line 485
    .local v0, "_arg0":Z
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    return v10

    .line 473
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 476
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    return v10

    .line 455
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_14
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 459
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 460
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    nop

    .line 463
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    invoke-virtual {v1, v12, v10}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 469
    return v10

    .line 423
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_15
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 427
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 429
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 430
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 433
    .local v1, "_arg2":Landroid/graphics/Rect;
    move-object v3, v1

    goto :goto_9

    .end local v1    # "_arg2":Landroid/graphics/Rect;
    :cond_b
    move-object v3, v0

    .line 436
    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 437
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 440
    .local v1, "_arg3":Landroid/graphics/Rect;
    move-object v4, v1

    goto :goto_a

    .end local v1    # "_arg3":Landroid/graphics/Rect;
    :cond_c
    move-object v4, v0

    .line 443
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 444
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 447
    .local v5, "_arg4":Landroid/graphics/Region;
    :goto_b
    move-object v5, v0

    goto :goto_c

    .end local v5    # "_arg4":Landroid/graphics/Region;
    :cond_d
    goto :goto_b

    .line 449
    .restart local v5    # "_arg4":Landroid/graphics/Region;
    :goto_c
    move-object v0, v15

    move-object v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    return v10

    .line 407
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Region;
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    :pswitch_16
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 411
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 412
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .local v0, "_arg1":Landroid/graphics/Region;
    goto :goto_d

    .line 415
    .end local v0    # "_arg1":Landroid/graphics/Region;
    :cond_e
    nop

    .line 417
    .restart local v0    # "_arg1":Landroid/graphics/Region;
    :goto_d
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    return v10

    .line 397
    .end local v0    # "_arg1":Landroid/graphics/Region;
    .end local v1    # "_arg0":Landroid/view/IWindow;
    :pswitch_17
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 400
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    .line 401
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return v10

    .line 386
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    :pswitch_18
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 390
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v8, v10

    nop

    :cond_f
    move v1, v8

    .line 391
    .local v1, "_arg1":Z
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    return v10

    .line 267
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_19
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v20

    .line 271
    .local v20, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 273
    .local v21, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 274
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 277
    .local v3, "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_e
    move-object v3, v0

    goto :goto_f

    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    goto :goto_e

    .line 280
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 282
    .local v22, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 284
    .local v23, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 286
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 288
    .local v25, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 290
    .local v26, "_arg7":J
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 292
    .local v8, "_arg8":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    .line 294
    .local v9, "_arg9":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 296
    .local v7, "_arg10":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 298
    .local v6, "_arg11":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 300
    .local v5, "_arg12":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 302
    .local v4, "_arg13":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v0

    .line 304
    .local v2, "_arg14":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v1, v0

    .line 306
    .local v1, "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    .line 308
    .local v0, "_arg16":Landroid/util/MergedConfiguration;
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 309
    .local v10, "_arg17":Landroid/view/Surface;
    move-object/from16 v28, v0

    move-object v0, v15

    .end local v0    # "_arg16":Landroid/util/MergedConfiguration;
    .local v28, "_arg16":Landroid/util/MergedConfiguration;
    move-object/from16 v29, v1

    move-object/from16 v1, v20

    .end local v1    # "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    .local v29, "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    move-object/from16 v30, v2

    move/from16 v2, v21

    .end local v2    # "_arg14":Landroid/graphics/Rect;
    .local v30, "_arg14":Landroid/graphics/Rect;
    move-object/from16 v31, v4

    move/from16 v4, v22

    .end local v4    # "_arg13":Landroid/graphics/Rect;
    .local v31, "_arg13":Landroid/graphics/Rect;
    move-object/from16 v32, v5

    move/from16 v5, v23

    .end local v5    # "_arg12":Landroid/graphics/Rect;
    .local v32, "_arg12":Landroid/graphics/Rect;
    move-object/from16 v33, v6

    move/from16 v6, v24

    .end local v6    # "_arg11":Landroid/graphics/Rect;
    .local v33, "_arg11":Landroid/graphics/Rect;
    move-object/from16 v34, v7

    move/from16 v7, v25

    .end local v7    # "_arg10":Landroid/graphics/Rect;
    .local v34, "_arg10":Landroid/graphics/Rect;
    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-wide/from16 v8, v26

    .end local v8    # "_arg8":Landroid/graphics/Rect;
    .end local v9    # "_arg9":Landroid/graphics/Rect;
    .local v35, "_arg8":Landroid/graphics/Rect;
    .local v36, "_arg9":Landroid/graphics/Rect;
    move-object/from16 v37, v10

    move-object/from16 v10, v35

    .end local v10    # "_arg17":Landroid/view/Surface;
    .local v37, "_arg17":Landroid/view/Surface;
    move-object/from16 v38, v11

    move-object/from16 v11, v36

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v38, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v34

    move-object/from16 v13, v33

    move-object/from16 v14, v32

    move-object/from16 v15, v31

    move-object/from16 v16, v30

    move-object/from16 v17, v29

    move-object/from16 v18, v28

    move-object/from16 v19, v37

    invoke-virtual/range {v0 .. v19}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v0

    .line 310
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v12, p3

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    nop

    .line 313
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    move-object/from16 v1, v35

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    .end local v35    # "_arg8":Landroid/graphics/Rect;
    .local v1, "_arg8":Landroid/graphics/Rect;
    nop

    .line 320
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    move-object/from16 v2, v36

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    .end local v36    # "_arg9":Landroid/graphics/Rect;
    .local v2, "_arg9":Landroid/graphics/Rect;
    nop

    .line 327
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    move-object/from16 v4, v34

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    .end local v34    # "_arg10":Landroid/graphics/Rect;
    .local v4, "_arg10":Landroid/graphics/Rect;
    nop

    .line 334
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    move-object/from16 v5, v33

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .local v5, "_arg11":Landroid/graphics/Rect;
    nop

    .line 341
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    move-object/from16 v6, v32

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    .end local v32    # "_arg12":Landroid/graphics/Rect;
    .local v6, "_arg12":Landroid/graphics/Rect;
    nop

    .line 348
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    move-object/from16 v7, v31

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    .end local v31    # "_arg13":Landroid/graphics/Rect;
    .local v7, "_arg13":Landroid/graphics/Rect;
    nop

    .line 355
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    move-object/from16 v8, v30

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    .end local v30    # "_arg14":Landroid/graphics/Rect;
    .local v8, "_arg14":Landroid/graphics/Rect;
    nop

    .line 362
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    move-object/from16 v9, v29

    invoke-virtual {v9, v12, v13}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    .end local v29    # "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    .local v9, "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    nop

    .line 369
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    move-object/from16 v10, v28

    invoke-virtual {v10, v12, v13}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    .end local v28    # "_arg16":Landroid/util/MergedConfiguration;
    .local v10, "_arg16":Landroid/util/MergedConfiguration;
    nop

    .line 376
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    move-object/from16 v11, v37

    invoke-virtual {v11, v12, v13}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 382
    .end local v37    # "_arg17":Landroid/view/Surface;
    .local v11, "_arg17":Landroid/view/Surface;
    return v13

    .line 258
    .end local v0    # "_result":I
    .end local v1    # "_arg8":Landroid/graphics/Rect;
    .end local v2    # "_arg9":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "_arg10":Landroid/graphics/Rect;
    .end local v5    # "_arg11":Landroid/graphics/Rect;
    .end local v6    # "_arg12":Landroid/graphics/Rect;
    .end local v7    # "_arg13":Landroid/graphics/Rect;
    .end local v8    # "_arg14":Landroid/graphics/Rect;
    .end local v9    # "_arg15":Landroid/view/DisplayCutout$ParcelableWrapper;
    .end local v10    # "_arg16":Landroid/util/MergedConfiguration;
    .end local v20    # "_arg0":Landroid/view/IWindow;
    .end local v21    # "_arg1":I
    .end local v22    # "_arg3":I
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":J
    .end local v38    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v13, v10

    move-object/from16 v38, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v38    # "descriptor":Ljava/lang/String;
    move-object/from16 v15, v38

    move-object/from16 v14, p2

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .end local v38    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 261
    .local v0, "_arg0":Landroid/view/IWindow;
    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    return v13

    .line 217
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object v14, v13

    move v13, v10

    move-object/from16 v50, v15

    move-object v15, v11

    move-object/from16 v11, v50

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 221
    .local v8, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 223
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 224
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 227
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_10
    move-object v3, v0

    goto :goto_11

    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    goto :goto_10

    .line 230
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 232
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 234
    .local v16, "_arg4":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 236
    .local v7, "_arg5":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 237
    .local v6, "_arg6":Landroid/graphics/Rect;
    move-object v0, v11

    move-object v1, v8

    move v2, v9

    move v4, v10

    move/from16 v5, v16

    move-object/from16 v39, v6

    move-object v6, v7

    .end local v6    # "_arg6":Landroid/graphics/Rect;
    .local v39, "_arg6":Landroid/graphics/Rect;
    move-object/from16 v40, v7

    move-object/from16 v7, v39

    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .local v40, "_arg5":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 238
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    nop

    .line 241
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    move-object/from16 v1, v40

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    .end local v40    # "_arg5":Landroid/graphics/Rect;
    .local v1, "_arg5":Landroid/graphics/Rect;
    nop

    .line 248
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    move-object/from16 v2, v39

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    .end local v39    # "_arg6":Landroid/graphics/Rect;
    .local v2, "_arg6":Landroid/graphics/Rect;
    return v13

    .line 178
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/graphics/Rect;
    .end local v2    # "_arg6":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "_arg0":Landroid/view/IWindow;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg3":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object v14, v13

    move v13, v10

    move-object/from16 v50, v15

    move-object v15, v11

    move-object/from16 v11, v50

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 182
    .local v7, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 184
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 185
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 188
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_12
    move-object v3, v0

    goto :goto_13

    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    goto :goto_12

    .line 191
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 193
    .local v9, "_arg3":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 195
    .local v10, "_arg4":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 196
    .local v6, "_arg5":Landroid/graphics/Rect;
    move-object v0, v11

    move-object v1, v7

    move v2, v8

    move v4, v9

    move-object v5, v10

    move-object/from16 v41, v6

    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .local v41, "_arg5":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 197
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    nop

    .line 200
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    nop

    .line 207
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    move-object/from16 v1, v41

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    .end local v41    # "_arg5":Landroid/graphics/Rect;
    .restart local v1    # "_arg5":Landroid/graphics/Rect;
    return v13

    .line 101
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "_arg0":Landroid/view/IWindow;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/graphics/Rect;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object v14, v13

    move v13, v10

    move-object/from16 v50, v15

    move-object v15, v11

    move-object/from16 v11, v50

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 105
    .local v16, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 107
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 108
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 111
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_14
    move-object v3, v0

    goto :goto_15

    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    goto :goto_14

    .line 114
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 116
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 118
    .local v19, "_arg4":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 120
    .local v10, "_arg5":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    .line 122
    .local v9, "_arg6":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 124
    .local v8, "_arg7":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 126
    .local v7, "_arg8":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v6, v0

    .line 128
    .local v6, "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v5, v0

    .line 129
    .local v5, "_arg10":Landroid/view/InputChannel;
    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v4, v18

    move-object/from16 v42, v5

    move/from16 v5, v19

    .end local v5    # "_arg10":Landroid/view/InputChannel;
    .local v42, "_arg10":Landroid/view/InputChannel;
    move-object/from16 v43, v6

    move-object v6, v10

    .end local v6    # "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    .local v43, "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    move-object/from16 v44, v7

    move-object v7, v9

    .end local v7    # "_arg8":Landroid/graphics/Rect;
    .local v44, "_arg8":Landroid/graphics/Rect;
    move-object/from16 v45, v8

    .end local v8    # "_arg7":Landroid/graphics/Rect;
    .local v45, "_arg7":Landroid/graphics/Rect;
    move-object/from16 v46, v9

    move-object/from16 v9, v44

    .end local v9    # "_arg6":Landroid/graphics/Rect;
    .local v46, "_arg6":Landroid/graphics/Rect;
    move-object/from16 v47, v10

    move-object/from16 v10, v43

    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .local v47, "_arg5":Landroid/graphics/Rect;
    move-object/from16 v11, v42

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    .line 130
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    nop

    .line 133
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    move-object/from16 v1, v47

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    .end local v47    # "_arg5":Landroid/graphics/Rect;
    .restart local v1    # "_arg5":Landroid/graphics/Rect;
    nop

    .line 140
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    move-object/from16 v2, v46

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    .end local v46    # "_arg6":Landroid/graphics/Rect;
    .restart local v2    # "_arg6":Landroid/graphics/Rect;
    nop

    .line 147
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    move-object/from16 v4, v45

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    .end local v45    # "_arg7":Landroid/graphics/Rect;
    .local v4, "_arg7":Landroid/graphics/Rect;
    nop

    .line 154
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    move-object/from16 v5, v44

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    .end local v44    # "_arg8":Landroid/graphics/Rect;
    .local v5, "_arg8":Landroid/graphics/Rect;
    nop

    .line 161
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    move-object/from16 v6, v43

    invoke-virtual {v6, v12, v13}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    .end local v43    # "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    .restart local v6    # "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    nop

    .line 168
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    move-object/from16 v7, v42

    invoke-virtual {v7, v12, v13}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    .end local v42    # "_arg10":Landroid/view/InputChannel;
    .local v7, "_arg10":Landroid/view/InputChannel;
    return v13

    .line 53
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/graphics/Rect;
    .end local v2    # "_arg6":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "_arg7":Landroid/graphics/Rect;
    .end local v5    # "_arg8":Landroid/graphics/Rect;
    .end local v6    # "_arg9":Landroid/view/DisplayCutout$ParcelableWrapper;
    .end local v7    # "_arg10":Landroid/view/InputChannel;
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move-object v15, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 57
    .local v8, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 59
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 60
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_16
    move-object v3, v0

    goto :goto_17

    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    goto :goto_16

    .line 66
    .restart local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 68
    .local v10, "_arg3":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 70
    .local v11, "_arg4":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 72
    .local v7, "_arg5":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v6, v0

    .line 73
    .local v6, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v4, v10

    move-object v5, v11

    move-object/from16 v48, v6

    move-object v6, v7

    .end local v6    # "_arg6":Landroid/view/InputChannel;
    .local v48, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v49, v7

    move-object/from16 v7, v48

    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .local v49, "_arg5":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    .line 74
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    nop

    .line 77
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    nop

    .line 84
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    move-object/from16 v1, v49

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    .end local v49    # "_arg5":Landroid/graphics/Rect;
    .restart local v1    # "_arg5":Landroid/graphics/Rect;
    nop

    .line 91
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    move-object/from16 v2, v48

    invoke-virtual {v2, v12, v13}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    .end local v48    # "_arg6":Landroid/view/InputChannel;
    .local v2, "_arg6":Landroid/view/InputChannel;
    return v13

    .line 48
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/graphics/Rect;
    .end local v2    # "_arg6":Landroid/view/InputChannel;
    .end local v3    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "_arg0":Landroid/view/IWindow;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg3":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :cond_15
    move-object v15, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
