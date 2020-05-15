.class public abstract Lcom/android/internal/view/IInputContextCallback$Stub;
.super Landroid/os/Binder;
.source "IInputContextCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContextCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContextCallback"

.field static final TRANSACTION_setCommitContentResult:I = 0x7

.field static final TRANSACTION_setCursorCapsMode:I = 0x3

.field static final TRANSACTION_setExtractedText:I = 0x4

.field static final TRANSACTION_setRequestUpdateCursorAnchorInfoResult:I = 0x6

.field static final TRANSACTION_setSelectedText:I = 0x5

.field static final TRANSACTION_setTextAfterCursor:I = 0x2

.field static final TRANSACTION_setTextBeforeCursor:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContextCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.internal.view.IInputContextCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputContextCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "com.android.internal.view.IInputContextCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 135
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCommitContentResult(ZI)V

    .line 137
    return v2

    .line 121
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 125
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    .line 127
    return v2

    .line 106
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    .line 112
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    :cond_2
    nop

    .restart local v3    # "_arg0":Ljava/lang/CharSequence;
    :goto_0
    move-object v1, v3

    .line 115
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    .local v1, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setSelectedText(Ljava/lang/CharSequence;I)V

    .line 117
    return v2

    .line 91
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/inputmethod/ExtractedText;

    .local v3, "_arg0":Landroid/view/inputmethod/ExtractedText;
    goto :goto_1

    .line 97
    .end local v3    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    :cond_3
    nop

    .restart local v3    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    :goto_1
    move-object v1, v3

    .line 100
    .end local v3    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    .local v1, "_arg0":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 101
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    .line 102
    return v2

    .line 81
    .end local v1    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCursorCapsMode(II)V

    .line 87
    return v2

    .line 66
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    .line 72
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    :cond_4
    nop

    .restart local v3    # "_arg0":Ljava/lang/CharSequence;
    :goto_2
    move-object v1, v3

    .line 75
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    .local v1, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    .line 77
    return v2

    .line 51
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    .line 57
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    :cond_5
    nop

    .restart local v3    # "_arg0":Ljava/lang/CharSequence;
    :goto_3
    move-object v1, v3

    .line 60
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    .restart local v1    # "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    .line 62
    return v2

    .line 46
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

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
