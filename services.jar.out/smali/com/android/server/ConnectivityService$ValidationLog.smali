.class Lcom/android/server/ConnectivityService$ValidationLog;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationLog"
.end annotation


# instance fields
.field final mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

.field final mName:Ljava/lang/String;

.field final mNetwork:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "log"    # Landroid/util/LocalLog$ReadOnlyLocalLog;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    .line 517
    iput-object p2, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mName:Ljava/lang/String;

    .line 518
    iput-object p3, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    .line 519
    return-void
.end method
