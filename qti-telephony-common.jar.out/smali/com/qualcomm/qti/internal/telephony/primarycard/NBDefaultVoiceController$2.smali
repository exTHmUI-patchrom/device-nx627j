.class Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NBDefaultVoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    .line 99
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V

    .line 103
    return-void
.end method
