.class public abstract Landroid/telephony/data/IDataServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDataServiceCallback.java"

# interfaces
.implements Landroid/telephony/data/IDataServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataServiceCallback"

.field static final TRANSACTION_onDataCallListChanged:I = 0x6

.field static final TRANSACTION_onDeactivateDataCallComplete:I = 0x2

.field static final TRANSACTION_onGetDataCallListComplete:I = 0x5

.field static final TRANSACTION_onSetDataProfileComplete:I = 0x4

.field static final TRANSACTION_onSetInitialAttachApnComplete:I = 0x3

.field static final TRANSACTION_onSetupDataCallComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataServiceCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
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

    .line 42
    const-string v0, "android.telephony.data.IDataServiceCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    sget-object v1, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p0, v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataCallListChanged(Ljava/util/List;)V

    .line 105
    return v2

    .line 91
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "_arg0":I
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 96
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p0, v1, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onGetDataCallListComplete(ILjava/util/List;)V

    .line 97
    return v2

    .line 83
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetDataProfileComplete(I)V

    .line 87
    return v2

    .line 75
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetInitialAttachApnComplete(I)V

    .line 79
    return v2

    .line 67
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDeactivateDataCallComplete(I)V

    .line 71
    return v2

    .line 52
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    .local v3, "_arg1":Landroid/telephony/data/DataCallResponse;
    goto :goto_0

    .line 60
    .end local v3    # "_arg1":Landroid/telephony/data/DataCallResponse;
    :cond_0
    const/4 v3, 0x0

    .line 62
    .restart local v3    # "_arg1":Landroid/telephony/data/DataCallResponse;
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 63
    return v2

    .line 47
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/data/DataCallResponse;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

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
