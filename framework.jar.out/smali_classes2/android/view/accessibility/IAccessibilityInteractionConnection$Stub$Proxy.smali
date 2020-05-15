.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 266
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "bounds"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v2, p10

    .line 277
    move-object/from16 v3, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v4, v0

    .line 279
    .local v4, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 280
    move-wide/from16 v5, p1

    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 288
    :goto_0
    move/from16 v8, p4

    :try_start_2
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v9, 0x0

    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 290
    move/from16 v10, p6

    :try_start_3
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 291
    move/from16 v11, p7

    :try_start_4
    invoke-virtual {v4, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 292
    move-wide/from16 v12, p8

    :try_start_5
    invoke-virtual {v4, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    invoke-virtual {v2, v4, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 298
    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    :goto_2
    if-eqz v3, :cond_3

    .line 301
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 305
    :cond_3
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    :goto_3
    move-object v7, p0

    :try_start_6
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v14, v0, v4, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v7, p0

    move-wide/from16 v5, p1

    :goto_4
    move/from16 v8, p4

    :goto_5
    move/from16 v10, p6

    :goto_6
    move/from16 v11, p7

    :goto_7
    move-wide/from16 v12, p8

    :goto_8
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    .line 347
    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    .line 349
    .local v3, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 350
    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 351
    move-object/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 359
    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 361
    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 362
    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 363
    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    if-eqz v2, :cond_2

    .line 365
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 374
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    .line 315
    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    .line 317
    .local v3, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 318
    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 319
    move-object/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 327
    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 329
    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 330
    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 331
    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 337
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 339
    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 342
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    .line 379
    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    .line 381
    .local v3, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 382
    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 383
    move/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 391
    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 393
    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 394
    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 395
    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 396
    if-eqz v2, :cond_2

    .line 397
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 401
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 403
    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 406
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    .line 411
    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    .line 413
    .local v3, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 414
    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 415
    move/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 423
    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 425
    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 426
    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 427
    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    if-eqz v2, :cond_2

    .line 429
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 433
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 435
    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 438
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 273
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v1, 0x0

    if-eqz p6, :cond_1

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 457
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    nop

    .line 465
    return-void

    .line 463
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
