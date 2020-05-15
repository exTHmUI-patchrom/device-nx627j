.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$11;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$2:I

    iput p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$2:I

    iget v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$11;->lambda$removeForegroundServiceFlagFromNotification$0(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V

    return-void
.end method
