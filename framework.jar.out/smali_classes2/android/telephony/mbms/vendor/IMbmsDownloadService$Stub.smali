.class public abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.super Landroid/os/Binder;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsDownloadService"

.field static final TRANSACTION_addProgressListener:I = 0x7

.field static final TRANSACTION_addStatusListener:I = 0x5

.field static final TRANSACTION_cancelDownload:I = 0xa

.field static final TRANSACTION_dispose:I = 0xd

.field static final TRANSACTION_download:I = 0x4

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_listPendingDownloads:I = 0x9

.field static final TRANSACTION_removeProgressListener:I = 0x8

.field static final TRANSACTION_removeStatusListener:I = 0x6

.field static final TRANSACTION_requestDownloadState:I = 0xb

.field static final TRANSACTION_requestUpdateFileServices:I = 0x2

.field static final TRANSACTION_resetDownloadKnowledge:I = 0xc

.field static final TRANSACTION_setTempFileRootDirectory:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->dispose(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v2

    .line 217
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .local v1, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_0

    .line 223
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_0
    nop

    .line 225
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 226
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return v2

    .line 195
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    sget-object v3, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/mbms/DownloadRequest;

    .local v3, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_1

    .line 201
    .end local v3    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_1
    move-object v3, v1

    .line 204
    .restart local v3    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    sget-object v1, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/FileInfo;

    .local v1, "_arg1":Landroid/telephony/mbms/FileInfo;
    goto :goto_2

    .line 208
    .end local v1    # "_arg1":Landroid/telephony/mbms/FileInfo;
    :cond_2
    nop

    .line 210
    .restart local v1    # "_arg1":Landroid/telephony/mbms/FileInfo;
    :goto_2
    invoke-virtual {p0, v3, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v4

    .line 211
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return v2

    .line 180
    .end local v1    # "_arg1":Landroid/telephony/mbms/FileInfo;
    .end local v3    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .local v1, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_3

    .line 186
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_3
    nop

    .line 188
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 189
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return v2

    .line 170
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 176
    return v2

    .line 153
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .local v1, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_4

    .line 159
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_4
    nop

    .line 162
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    .line 163
    .local v3, "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    .line 164
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v2

    .line 136
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_5

    .line 142
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_5
    nop

    .line 145
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    .line 146
    .restart local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    .line 147
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v2

    .line 119
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_6

    .line 125
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_6
    nop

    .line 128
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    .line 129
    .local v3, "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    .line 130
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v2

    .line 102
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_7

    .line 108
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_7
    nop

    .line 111
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    .line 112
    .restart local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    .line 113
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v2

    .line 87
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 90
    sget-object v1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_8

    .line 93
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_8
    nop

    .line 95
    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 96
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v2

    .line 75
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    .line 81
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v2

    .line 63
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 68
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v4

    .line 69
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v2

    .line 51
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    move-result-object v3

    .line 56
    .local v3, "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v4

    .line 57
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return v2

    .line 46
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .end local v4    # "_result":I
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
