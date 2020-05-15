.class Lcom/android/server/wifi/WifiDiagnostics$BugReport;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BugReport"
.end annotation


# instance fields
.field alertData:[B

.field errorCode:I

.field fwMemoryDump:[B

.field kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kernelTimeNanos:J

.field logcatLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDriverStateDump:[B

.field ringBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field systemTimeMs:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiDiagnostics;

    .line 278
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method clearVerboseLogs()V
    .locals 1

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    .line 291
    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 298
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->systemTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    const-string v2, "system time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const/4 v5, 0x3

    aput-object v1, v3, v5

    const/4 v5, 0x4

    aput-object v1, v3, v5

    const/4 v5, 0x5

    aput-object v1, v3, v5

    .line 300
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-wide v2, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v2, v5

    .line 303
    .local v2, "kernelTimeMs":J
    const-string v5, "kernel time = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v5, v2, v5

    .line 304
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    if-nez v5, :cond_0

    .line 307
    const-string v5, "reason = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :cond_0
    const-string v5, "errorCode = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v5, "data \n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiDiagnostics;->access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    if-eqz v5, :cond_2

    .line 315
    const-string v5, "kernel log: \n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    move v5, v4

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 317
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    .end local v5    # "i":I
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 323
    const-string v5, "system log: \n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move v5, v4

    .restart local v5    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 325
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 327
    .end local v5    # "i":I
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 331
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 332
    .local v7, "ringName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    .line 333
    .local v8, "buffers":[[B
    const-string v9, "ring-buffer = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/4 v9, 0x0

    .line 336
    .local v9, "size":I
    move v10, v9

    move v9, v4

    .local v9, "i":I
    .local v10, "size":I
    :goto_4
    array-length v11, v8

    if-ge v9, v11, :cond_5

    .line 337
    aget-object v11, v8, v9

    array-length v11, v11

    add-int/2addr v10, v11

    .line 336
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 340
    .end local v9    # "i":I
    :cond_5
    new-array v9, v10, [B

    .line 341
    .local v9, "buffer":[B
    const/4 v11, 0x0

    .line 342
    .local v11, "index":I
    move v12, v11

    move v11, v4

    .local v11, "i":I
    .local v12, "index":I
    :goto_5
    array-length v13, v8

    if-ge v11, v13, :cond_6

    .line 343
    aget-object v13, v8, v11

    aget-object v14, v8, v11

    array-length v14, v14

    invoke-static {v13, v4, v9, v12, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 344
    aget-object v13, v8, v11

    array-length v13, v13

    add-int/2addr v12, v13

    .line 342
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 347
    .end local v11    # "i":I
    :cond_6
    iget-object v11, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-static {v11, v9}, Lcom/android/server/wifi/WifiDiagnostics;->access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v7    # "ringName":Ljava/lang/String;
    .end local v8    # "buffers":[[B
    .end local v9    # "buffer":[B
    .end local v10    # "size":I
    .end local v12    # "index":I
    goto :goto_3

    .line 351
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    if-eqz v4, :cond_8

    .line 352
    const-string v4, "FW Memory dump"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiDiagnostics;->access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    if-eqz v4, :cond_a

    .line 359
    const-string v4, "Driver state dump"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    invoke-static {v4}, Lcom/android/server/wifi/util/StringUtil;->isAsciiPrintable([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 361
    const-string v4, " (ascii)\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    const-string v6, "US-ASCII"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 365
    :cond_9
    const-string v4, " (base64)\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiDiagnostics;->access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
