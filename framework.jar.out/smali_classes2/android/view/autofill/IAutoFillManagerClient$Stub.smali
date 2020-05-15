.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final TRANSACTION_authenticate:I = 0x3

.field static final TRANSACTION_autofill:I = 0x2

.field static final TRANSACTION_dispatchUnhandledKey:I = 0x8

.field static final TRANSACTION_notifyNoFillUi:I = 0x7

.field static final TRANSACTION_requestHideFillUi:I = 0x6

.field static final TRANSACTION_requestShowFillUi:I = 0x5

.field static final TRANSACTION_setSaveUiState:I = 0xa

.field static final TRANSACTION_setSessionFinished:I = 0xb

.field static final TRANSACTION_setState:I = 0x1

.field static final TRANSACTION_setTrackedViews:I = 0x4

.field static final TRANSACTION_startIntentSender:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 43
    const-string v10, "android.view.autofill.IAutoFillManagerClient"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    .line 240
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 232
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(I)V

    .line 236
    return v11

    .line 222
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v11

    nop

    .line 227
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual {v7, v1, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    .line 228
    return v11

    .line 202
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .local v0, "_arg0":Landroid/content/IntentSender;
    goto :goto_0

    .line 208
    .end local v0    # "_arg0":Landroid/content/IntentSender;
    :cond_1
    move-object v0, v1

    .line 211
    .restart local v0    # "_arg0":Landroid/content/IntentSender;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_1

    .line 215
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_2
    nop

    .line 217
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 218
    return v11

    .line 180
    .end local v0    # "_arg0":Landroid/content/IntentSender;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_2

    .line 188
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_3
    move-object v2, v1

    .line 191
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .local v1, "_arg2":Landroid/view/KeyEvent;
    goto :goto_3

    .line 195
    .end local v1    # "_arg2":Landroid/view/KeyEvent;
    :cond_4
    nop

    .line 197
    .restart local v1    # "_arg2":Landroid/view/KeyEvent;
    :goto_3
    invoke-virtual {v7, v0, v2, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    .line 198
    return v11

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/view/KeyEvent;
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .local v1, "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_4

    .line 171
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_5
    nop

    .line 174
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    .line 176
    return v11

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v2    # "_arg2":I
    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_5

    .line 156
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_6
    nop

    .line 158
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :goto_5
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 159
    return v11

    .line 120
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 124
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 128
    .local v0, "_arg1":Landroid/view/autofill/AutofillId;
    move-object v2, v0

    goto :goto_6

    .end local v0    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_7
    move-object v2, v1

    .line 131
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 133
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 135
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 139
    .local v0, "_arg4":Landroid/graphics/Rect;
    move-object v5, v0

    goto :goto_7

    .end local v0    # "_arg4":Landroid/graphics/Rect;
    :cond_8
    move-object v5, v1

    .line 142
    .local v5, "_arg4":Landroid/graphics/Rect;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v15

    .line 143
    .local v15, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    move-object v0, v7

    move v1, v12

    move v3, v13

    move v4, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 144
    return v11

    .line 97
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 101
    .restart local v12    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/view/autofill/AutofillId;

    .line 103
    .local v13, "_arg1":[Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v3, v11

    goto :goto_8

    :cond_9
    move v3, v0

    .line 105
    .local v3, "_arg2":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v4, v11

    goto :goto_9

    :cond_a
    move v4, v0

    .line 107
    .local v4, "_arg3":Z
    :goto_9
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/view/autofill/AutofillId;

    .line 109
    .local v14, "_arg4":[Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 113
    .local v0, "_arg5":Landroid/view/autofill/AutofillId;
    move-object v6, v0

    goto :goto_a

    .end local v0    # "_arg5":Landroid/view/autofill/AutofillId;
    :cond_b
    move-object v6, v1

    .line 115
    .local v6, "_arg5":Landroid/view/autofill/AutofillId;
    :goto_a
    move-object v0, v7

    move v1, v12

    move-object v2, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    .line 116
    return v11

    .line 73
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg5":Landroid/view/autofill/AutofillId;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":[Landroid/view/autofill/AutofillId;
    .end local v14    # "_arg4":[Landroid/view/autofill/AutofillId;
    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 80
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .local v3, "_arg2":Landroid/content/IntentSender;
    goto :goto_b

    .line 83
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    :cond_c
    move-object v3, v1

    .line 86
    .restart local v3    # "_arg2":Landroid/content/IntentSender;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 87
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg3":Landroid/content/Intent;
    goto :goto_c

    .line 90
    .end local v1    # "_arg3":Landroid/content/Intent;
    :cond_d
    nop

    .line 92
    .restart local v1    # "_arg3":Landroid/content/Intent;
    :goto_c
    invoke-virtual {v7, v0, v2, v3, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 93
    return v11

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg3":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 69
    return v11

    .line 53
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(I)V

    .line 57
    return v11

    .line 48
    .end local v0    # "_arg0":I
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
