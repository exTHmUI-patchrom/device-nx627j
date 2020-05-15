.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

.field private final synthetic f$1:Landroid/telephony/SmsMessage;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$1:Landroid/telephony/SmsMessage;

    iput p3, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSmsInjectedResult(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$1:Landroid/telephony/SmsMessage;

    iget v2, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->lambda$onSmsReceived$0(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;ILjava/lang/String;I)V

    return-void
.end method
