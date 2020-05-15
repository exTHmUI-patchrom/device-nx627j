.class Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;
.super Ljava/lang/Object;
.source "SubscriptionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionRunnable"
.end annotation


# static fields
.field public static final SET_CARRIER_TEXT:I = 0x64


# instance fields
.field private mCommandId:I

.field private mObject:Ljava/lang/Object;

.field private mSubId:I

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SubscriptionController;IILjava/lang/Object;)V
    .locals 0
    .param p2, "commandId"    # I
    .param p3, "subId"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .line 2358
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2359
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mCommandId:I

    .line 2360
    iput p3, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mSubId:I

    .line 2361
    iput-object p4, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mObject:Ljava/lang/Object;

    .line 2362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2365
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mCommandId:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$SubscriptionRunnable;->mSubId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;I)I

    .line 2368
    nop

    .line 2373
    :goto_0
    return-void
.end method
