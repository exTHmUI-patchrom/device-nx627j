.class public abstract Landroid/service/textclassifier/ITextClassifierService$Stub;
.super Landroid/os/Binder;
.source "ITextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierService"

.field static final TRANSACTION_onClassifyText:I = 0x2

.field static final TRANSACTION_onCreateTextClassificationSession:I = 0x5

.field static final TRANSACTION_onDestroyTextClassificationSession:I = 0x6

.field static final TRANSACTION_onGenerateLinks:I = 0x3

.field static final TRANSACTION_onSelectionEvent:I = 0x4

.field static final TRANSACTION_onSuggestSelection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextClassifierService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v1, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationSessionId;

    .local v1, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_0

    .line 165
    .end local v1    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_0
    nop

    .line 167
    .restart local v1    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 168
    return v2

    .line 139
    .end local v1    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    sget-object v3, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationContext;

    .local v3, "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    goto :goto_1

    .line 145
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    :cond_1
    move-object v3, v1

    .line 148
    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    sget-object v1, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationSessionId;

    .local v1, "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_2

    .line 152
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_2
    nop

    .line 154
    .restart local v1    # "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_2
    invoke-virtual {p0, v3, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 155
    return v2

    .line 119
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .local v3, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_3

    .line 125
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_3
    move-object v3, v1

    .line 128
    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    sget-object v1, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/SelectionEvent;

    .local v1, "_arg1":Landroid/view/textclassifier/SelectionEvent;
    goto :goto_4

    .line 132
    .end local v1    # "_arg1":Landroid/view/textclassifier/SelectionEvent;
    :cond_4
    nop

    .line 134
    .restart local v1    # "_arg1":Landroid/view/textclassifier/SelectionEvent;
    :goto_4
    invoke-virtual {p0, v3, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    .line 135
    return v2

    .line 97
    .end local v1    # "_arg1":Landroid/view/textclassifier/SelectionEvent;
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_5

    .line 103
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_5
    move-object v3, v1

    .line 106
    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 107
    sget-object v1, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLinks$Request;

    .local v1, "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    goto :goto_6

    .line 110
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    :cond_6
    nop

    .line 113
    .restart local v1    # "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextLinksCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextLinksCallback;

    move-result-object v4

    .line 114
    .local v4, "_arg2":Landroid/service/textclassifier/ITextLinksCallback;
    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    .line 115
    return v2

    .line 75
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextLinksCallback;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_7

    .line 81
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_7
    move-object v3, v1

    .line 84
    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    sget-object v1, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassification$Request;

    .local v1, "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    goto :goto_8

    .line 88
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    :cond_8
    nop

    .line 91
    .restart local v1    # "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassificationCallback;

    move-result-object v4

    .line 92
    .local v4, "_arg2":Landroid/service/textclassifier/ITextClassificationCallback;
    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    .line 93
    return v2

    .line 53
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassificationCallback;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 56
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    goto :goto_9

    .line 59
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_9
    move-object v3, v1

    .line 62
    .restart local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 63
    sget-object v1, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection$Request;

    .local v1, "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    goto :goto_a

    .line 66
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    :cond_a
    nop

    .line 69
    .restart local v1    # "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextSelectionCallback;

    move-result-object v4

    .line 70
    .local v4, "_arg2":Landroid/service/textclassifier/ITextSelectionCallback;
    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    .line 71
    return v2

    .line 48
    .end local v1    # "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    .end local v3    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextSelectionCallback;
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

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
