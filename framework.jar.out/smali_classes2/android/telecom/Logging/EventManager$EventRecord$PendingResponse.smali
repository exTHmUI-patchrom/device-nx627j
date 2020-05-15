.class Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager$EventRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingResponse"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field requestEventId:Ljava/lang/String;

.field requestEventTimeMillis:J

.field final synthetic this$1:Landroid/telecom/Logging/EventManager$EventRecord;

.field timeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p2, "requestEventId"    # Ljava/lang/String;
    .param p3, "requestEventTimeMillis"    # J
    .param p5, "timeoutMillis"    # J
    .param p7, "name"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->this$1:Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventId:Ljava/lang/String;

    .line 177
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    .line 178
    iput-wide p5, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    .line 179
    iput-object p7, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    .line 180
    return-void
.end method
