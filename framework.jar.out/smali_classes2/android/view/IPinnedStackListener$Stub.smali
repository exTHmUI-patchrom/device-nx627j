.class public abstract Landroid/view/IPinnedStackListener$Stub;
.super Landroid/os/Binder;
.source "IPinnedStackListener.java"

# interfaces
.implements Landroid/view/IPinnedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IPinnedStackListener"

.field static final TRANSACTION_onActionsChanged:I = 0x6

.field static final TRANSACTION_onImeVisibilityChanged:I = 0x3

.field static final TRANSACTION_onListenerRegistered:I = 0x1

.field static final TRANSACTION_onMinimizedStateChanged:I = 0x5

.field static final TRANSACTION_onMovementBoundsChanged:I = 0x2

.field static final TRANSACTION_onShelfVisibilityChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IPinnedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPinnedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.view.IPinnedStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IPinnedStackListener;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/view/IPinnedStackListener;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/view/IPinnedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IPinnedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    .line 43
    const-string v10, "android.view.IPinnedStackListener"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_9

    const/4 v0, 0x0

    const/4 v5, 0x0

    packed-switch v8, :pswitch_data_0

    .line 135
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 122
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 128
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :cond_0
    nop

    .line 130
    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/IPinnedStackListener$Stub;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 131
    return v11

    .line 114
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v5, v11

    nop

    :cond_1
    move v0, v5

    .line 117
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Landroid/view/IPinnedStackListener$Stub;->onMinimizedStateChanged(Z)V

    .line 118
    return v11

    .line 104
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v5, v11

    nop

    :cond_2
    move v0, v5

    .line 108
    .restart local v0    # "_arg0":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/view/IPinnedStackListener$Stub;->onShelfVisibilityChanged(ZI)V

    .line 110
    return v11

    .line 94
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v5, v11

    nop

    :cond_3
    move v0, v5

    .line 98
    .restart local v0    # "_arg0":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/view/IPinnedStackListener$Stub;->onImeVisibilityChanged(ZI)V

    .line 100
    return v11

    .line 61
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    .line 67
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_4
    move-object v1, v0

    .line 70
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, "_arg1":Landroid/graphics/Rect;
    goto :goto_2

    .line 74
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :cond_5
    move-object v2, v0

    .line 77
    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 81
    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_3
    move-object v3, v0

    goto :goto_4

    .end local v3    # "_arg2":Landroid/graphics/Rect;
    :cond_6
    goto :goto_3

    .line 84
    .restart local v3    # "_arg2":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v4, v11

    goto :goto_5

    :cond_7
    move v4, v5

    .line 86
    .local v4, "_arg3":Z
    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v5, v11

    nop

    .line 88
    .local v5, "_arg4":Z
    :cond_8
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 89
    .local v12, "_arg5":I
    move-object v0, v7

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/view/IPinnedStackListener$Stub;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    .line 90
    return v11

    .line 53
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v12    # "_arg5":I
    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IPinnedStackController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackController;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Landroid/view/IPinnedStackController;
    invoke-virtual {v7, v0}, Landroid/view/IPinnedStackListener$Stub;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    .line 57
    return v11

    .line 48
    .end local v0    # "_arg0":Landroid/view/IPinnedStackController;
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v11

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
