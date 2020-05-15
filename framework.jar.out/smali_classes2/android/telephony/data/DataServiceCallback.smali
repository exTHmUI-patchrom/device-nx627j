.class public Landroid/telephony/data/DataServiceCallback;
.super Ljava/lang/Object;
.source "DataServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataServiceCallback$ResultCode;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR_BUSY:I = 0x3

.field public static final RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Landroid/telephony/data/DataServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    .line 66
    return-void
.end method


# virtual methods
.method public onDataCallListChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 163
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onDataCallListChanged on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onDeactivateDataCallComplete(I)V
    .locals 4
    .param p1, "result"    # I

    .line 93
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 94
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDeactivateDataCallComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onDeactivateDataCallComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onGetDataCallListComplete(ILjava/util/List;)V
    .locals 4
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p2, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 147
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onGetDataCallListComplete(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onGetDataCallListComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSetDataProfileComplete(I)V
    .locals 4
    .param p1, "result"    # I

    .line 127
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 128
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetDataProfileComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetDataProfileComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSetInitialAttachApnComplete(I)V
    .locals 4
    .param p1, "result"    # I

    .line 110
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 111
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetInitialAttachApnComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetInitialAttachApnComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 76
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 77
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v3, "Failed to onSetupDataCallComplete on the remote"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
