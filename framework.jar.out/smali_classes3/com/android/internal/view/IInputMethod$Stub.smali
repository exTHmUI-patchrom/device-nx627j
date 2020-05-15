.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_changeInputMethodSubtype:I = 0xa

.field static final TRANSACTION_createSession:I = 0x5

.field static final TRANSACTION_hideSoftInput:I = 0x9

.field static final TRANSACTION_revokeSession:I = 0x7

.field static final TRANSACTION_setSessionEnabled:I = 0x6

.field static final TRANSACTION_showSoftInput:I = 0x8

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move v7, p1

    move-object/from16 v8, p2

    .line 43
    const-string v9, "com.android.internal.view.IInputMethod"

    .line 44
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 177
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 164
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .local v1, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    .line 170
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    nop

    .restart local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    move-object v0, v1

    .line 172
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .local v0, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 173
    return v10

    .line 149
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .local v1, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 157
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :cond_1
    nop

    .line 159
    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    :goto_1
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 160
    return v10

    .line 134
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 142
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :cond_2
    nop

    .line 144
    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    :goto_2
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 145
    return v10

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    .line 130
    return v10

    .line 116
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v1

    .line 120
    .local v1, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v10

    nop

    .line 121
    .local v0, "_arg1":Z
    :cond_3
    invoke-virtual {v6, v1, v0}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    .line 122
    return v10

    .line 101
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/InputChannel;

    .local v1, "_arg0":Landroid/view/InputChannel;
    goto :goto_3

    .line 107
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    :cond_4
    nop

    .restart local v1    # "_arg0":Landroid/view/InputChannel;
    :goto_3
    move-object v0, v1

    .line 110
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    .local v0, "_arg0":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    move-result-object v1

    .line 111
    .local v1, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    .line 112
    return v10

    .line 80
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 84
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v12

    .line 86
    .local v12, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 88
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 92
    .local v4, "_arg3":Landroid/view/inputmethod/EditorInfo;
    :goto_4
    move-object v4, v1

    goto :goto_5

    .end local v4    # "_arg3":Landroid/view/inputmethod/EditorInfo;
    :cond_5
    goto :goto_4

    .line 95
    .restart local v4    # "_arg3":Landroid/view/inputmethod/EditorInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v5, v10

    goto :goto_6

    :cond_6
    move v5, v0

    .line 96
    .local v5, "_arg4":Z
    :goto_6
    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V

    .line 97
    return v10

    .line 74
    .end local v4    # "_arg3":Landroid/view/inputmethod/EditorInfo;
    .end local v5    # "_arg4":Z
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg2":I
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    .line 76
    return v10

    .line 61
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    sget-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/InputBinding;

    .local v1, "_arg0":Landroid/view/inputmethod/InputBinding;
    goto :goto_7

    .line 67
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :cond_7
    nop

    .restart local v1    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :goto_7
    move-object v0, v1

    .line 69
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputBinding;
    .local v0, "_arg0":Landroid/view/inputmethod/InputBinding;
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 70
    return v10

    .line 53
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    .line 57
    return v10

    .line 48
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v10

    :pswitch_data_0
    .packed-switch 0x1
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
