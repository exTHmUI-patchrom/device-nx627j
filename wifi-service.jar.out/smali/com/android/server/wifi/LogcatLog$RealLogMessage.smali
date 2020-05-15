.class Lcom/android/server/wifi/LogcatLog$RealLogMessage;
.super Ljava/lang/Object;
.source "LogcatLog.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog$LogMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/LogcatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealLogMessage"
.end annotation


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mLogLevel:I

.field private mNextFormatCharPos:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mLogLevel:I

    .line 157
    iput-object p2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 161
    if-eqz p4, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    return-void
.end method

.method private copyUntilPlaceholder()V
    .locals 4

    .line 227
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    const/16 v1, 0x25

    iget v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 232
    .local v0, "placeholderPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 237
    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 238
    return-void
.end method


# virtual methods
.method public c(C)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "value"    # C

    .line 195
    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 196
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 200
    :cond_0
    return-object p0
.end method

.method public c(J)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "value"    # J

    .line 185
    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 186
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 190
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 176
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 180
    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "value"    # Z

    .line 205
    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 206
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 210
    :cond_0
    return-object p0
.end method

.method public flush()V
    .locals 4

    .line 215
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mLogLevel:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
