.class Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 146
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    .line 150
    return-void
.end method
