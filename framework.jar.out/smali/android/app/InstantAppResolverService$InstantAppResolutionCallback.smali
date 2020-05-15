.class public final Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
.super Ljava/lang/Object;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppResolutionCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mSequence:I


# direct methods
.method constructor <init>(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 197
    iput p1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    .line 198
    return-void
.end method


# virtual methods
.method public onInstantAppResolveInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 203
    const-string v1, "android.app.extra.SEQUENCE"

    iget v2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 208
    :goto_0
    return-void
.end method
