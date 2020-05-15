.class Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegManagerDeathRecipient"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    .line 117
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " transport type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 123
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 124
    return-void
.end method
