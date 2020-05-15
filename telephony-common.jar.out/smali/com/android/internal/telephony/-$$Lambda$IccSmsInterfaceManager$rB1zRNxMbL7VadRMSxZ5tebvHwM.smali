.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$IccSmsInterfaceManager$rB1zRNxMbL7VadRMSxZ5tebvHwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;


# instance fields
.field private final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$IccSmsInterfaceManager$rB1zRNxMbL7VadRMSxZ5tebvHwM;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onSmsInjectedResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$IccSmsInterfaceManager$rB1zRNxMbL7VadRMSxZ5tebvHwM;->f$0:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->lambda$injectSmsPdu$0(Landroid/app/PendingIntent;I)V

    return-void
.end method
