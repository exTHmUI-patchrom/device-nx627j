.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$new$0(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V

    return-void
.end method
