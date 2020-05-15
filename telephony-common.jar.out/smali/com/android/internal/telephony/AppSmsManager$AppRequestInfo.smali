.class final Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
.super Ljava/lang/Object;
.source "AppSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppRequestInfo"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/internal/telephony/AppSmsManager;

.field public final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/AppSmsManager;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "token"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->this$0:Lcom/android/internal/telephony/AppSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->packageName:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->pendingIntent:Landroid/app/PendingIntent;

    .line 173
    iput-object p4, p0, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->token:Ljava/lang/String;

    .line 174
    return-void
.end method
