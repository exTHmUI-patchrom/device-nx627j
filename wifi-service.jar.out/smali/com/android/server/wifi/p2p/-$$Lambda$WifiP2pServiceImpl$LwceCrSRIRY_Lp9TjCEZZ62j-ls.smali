.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls;->f$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls;->f$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->lambda$getMessenger$0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/IBinder;)V

    return-void
.end method
