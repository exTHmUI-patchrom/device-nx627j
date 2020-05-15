.class final Landroid/app/ActivityManager$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserver"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "clientContext"    # Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 149
    iput-object p2, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    .line 150
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 165
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 172
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 160
    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 161
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 169
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 154
    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object v1, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 156
    return-void
.end method
