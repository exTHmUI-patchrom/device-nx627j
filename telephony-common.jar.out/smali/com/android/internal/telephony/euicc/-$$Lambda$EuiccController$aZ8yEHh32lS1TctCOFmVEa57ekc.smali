.class public final synthetic Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$1:Landroid/app/PendingIntent;

    iput p3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$1:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;->f$3:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->lambda$refreshSubscriptionsAndSendResult$0(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
