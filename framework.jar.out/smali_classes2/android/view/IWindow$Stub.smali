.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchPointerCaptureChanged:I = 0xf

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xd

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_updatePointerIcon:I = 0xb

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v12, p2

    .line 44
    const-string v13, "android.view.IWindow"

    .line 45
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v15, v0, :cond_15

    const/4 v0, 0x0

    const/16 v17, 0x0

    packed-switch v15, :pswitch_data_0

    .line 290
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 282
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v0, v16

    nop

    .line 285
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {v14, v0}, Landroid/view/IWindow$Stub;->dispatchPointerCaptureChanged(Z)V

    .line 286
    return v16

    .line 272
    .end local v0    # "_arg0":Z
    :pswitch_1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg1":I
    invoke-virtual {v14, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 278
    return v16

    .line 266
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 268
    return v16

    .line 252
    :pswitch_3
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .local v3, "_arg3":I
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    .line 262
    return v16

    .line 242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 246
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 247
    .local v1, "_arg1":F
    invoke-virtual {v14, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    .line 248
    return v16

    .line 229
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_5
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/DragEvent;

    .local v17, "_arg0":Landroid/view/DragEvent;
    goto :goto_0

    .line 235
    .end local v17    # "_arg0":Landroid/view/DragEvent;
    :cond_1
    nop

    .restart local v17    # "_arg0":Landroid/view/DragEvent;
    :goto_0
    move-object/from16 v0, v17

    .line 237
    .end local v17    # "_arg0":Landroid/view/DragEvent;
    .local v0, "_arg0":Landroid/view/DragEvent;
    invoke-virtual {v14, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 238
    return v16

    .line 206
    .end local v0    # "_arg0":Landroid/view/DragEvent;
    :pswitch_6
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 212
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 214
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 216
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 220
    .local v1, "_arg4":Landroid/os/Bundle;
    move-object v5, v1

    goto :goto_1

    .end local v1    # "_arg4":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v5, v17

    .line 223
    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v6, v16

    goto :goto_2

    :cond_3
    move v6, v0

    .line 224
    .local v6, "_arg5":Z
    :goto_2
    move-object v0, v14

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 225
    return v16

    .line 190
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :pswitch_7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 194
    .local v6, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 196
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 198
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 200
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v5, v16

    goto :goto_3

    :cond_4
    move v5, v0

    .line 201
    .local v5, "_arg4":Z
    :goto_3
    move-object v0, v14

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    .line 202
    return v16

    .line 182
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":F
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    :pswitch_8
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 186
    return v16

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v1, v16

    goto :goto_4

    :cond_5
    move v1, v0

    .line 176
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v0, v16

    nop

    .line 177
    .local v0, "_arg1":Z
    :cond_6
    invoke-virtual {v14, v1, v0}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    .line 178
    return v16

    .line 166
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Z
    :pswitch_a
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 168
    return v16

    .line 158
    :pswitch_b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v0, v16

    nop

    .line 161
    .local v0, "_arg0":Z
    :cond_7
    invoke-virtual {v14, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 162
    return v16

    .line 148
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, "_arg1":I
    invoke-virtual {v14, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 154
    return v16

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 74
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_5

    .line 77
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v1, v17

    .line 80
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 81
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    .line 84
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v2, v17

    .line 87
    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 88
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, "_arg2":Landroid/graphics/Rect;
    goto :goto_7

    .line 91
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v3, v17

    .line 94
    .restart local v3    # "_arg2":Landroid/graphics/Rect;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 95
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .local v4, "_arg3":Landroid/graphics/Rect;
    goto :goto_8

    .line 98
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v4, v17

    .line 101
    .restart local v4    # "_arg3":Landroid/graphics/Rect;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 102
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .local v5, "_arg4":Landroid/graphics/Rect;
    goto :goto_9

    .line 105
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v5, v17

    .line 108
    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 109
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .local v6, "_arg5":Landroid/graphics/Rect;
    goto :goto_a

    .line 112
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v6, v17

    .line 115
    .restart local v6    # "_arg5":Landroid/graphics/Rect;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move/from16 v7, v16

    goto :goto_b

    :cond_e
    move v7, v0

    .line 117
    .local v7, "_arg6":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    .line 118
    sget-object v8, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/MergedConfiguration;

    .local v8, "_arg7":Landroid/util/MergedConfiguration;
    goto :goto_c

    .line 121
    .end local v8    # "_arg7":Landroid/util/MergedConfiguration;
    :cond_f
    move-object/from16 v8, v17

    .line 124
    .restart local v8    # "_arg7":Landroid/util/MergedConfiguration;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    .line 125
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "_arg8":Landroid/graphics/Rect;
    goto :goto_d

    .line 128
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v9, v17

    .line 131
    .restart local v9    # "_arg8":Landroid/graphics/Rect;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_11

    move/from16 v10, v16

    goto :goto_e

    :cond_11
    move v10, v0

    .line 133
    .local v10, "_arg9":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_12

    move/from16 v11, v16

    goto :goto_f

    :cond_12
    move v11, v0

    .line 135
    .local v11, "_arg10":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 137
    .local v18, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 138
    sget-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    .local v0, "_arg12":Landroid/view/DisplayCutout$ParcelableWrapper;
    goto :goto_10

    .line 141
    .end local v0    # "_arg12":Landroid/view/DisplayCutout$ParcelableWrapper;
    :cond_13
    move-object/from16 v0, v17

    .restart local v0    # "_arg12":Landroid/view/DisplayCutout$ParcelableWrapper;
    :goto_10
    move-object v15, v13

    move-object v13, v0

    .line 143
    .end local v0    # "_arg12":Landroid/view/DisplayCutout$ParcelableWrapper;
    .local v13, "_arg12":Landroid/view/DisplayCutout$ParcelableWrapper;
    .local v15, "descriptor":Ljava/lang/String;
    move-object v0, v14

    move-object v14, v12

    move/from16 v12, v18

    invoke-virtual/range {v0 .. v13}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 144
    return v16

    .line 54
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/util/MergedConfiguration;
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":Z
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v18    # "_arg11":I
    .local v13, "descriptor":Ljava/lang/String;
    :pswitch_e
    move-object v14, v12

    move-object v15, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 61
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .local v17, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_11

    .line 64
    .end local v17    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_14
    nop

    .restart local v17    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_11
    move-object/from16 v2, v17

    .line 66
    .end local v17    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 67
    return v16

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :cond_15
    move-object v15, v13

    move-object v3, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
