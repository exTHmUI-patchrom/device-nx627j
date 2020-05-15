.class Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendScpResults()V
    .locals 12

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultCode()I

    move-result v0

    .line 130
    .local v0, "resultCode":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCP results error: result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 135
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v3, "SCP results error: missing extras"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 137
    return-void

    .line 139
    :cond_1
    const-string v3, "sender"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "sender":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v4, "SCP results error: missing sender extra."

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 142
    return-void

    .line 144
    :cond_2
    const-string v4, "results"

    .line 145
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 146
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v4, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v5, "SCP results error: missing results extra."

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 152
    .local v5, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 154
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 155
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 157
    .local v6, "encodedBearerData":[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    .local v8, "dos":Ljava/io/DataOutputStream;
    const/16 v9, 0x1006

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 162
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    nop

    .line 164
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v9

    .line 165
    .local v9, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 166
    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 167
    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 168
    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 169
    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 170
    iget-object v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v11, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v8, v10, v1, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 172
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 173
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 174
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 175
    array-length v10, v6

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 176
    array-length v10, v6

    invoke-virtual {v8, v6, v1, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v9    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v10, "exception creating SCP results PDU"

    invoke-static {v9, v10, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :goto_0
    goto :goto_1

    .line 184
    :catch_1
    move-exception v1

    .line 186
    nop

    .line 187
    :goto_1
    return-void

    .line 182
    :goto_2
    nop

    .line 183
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    goto :goto_3

    .line 184
    :catch_2
    move-exception v9

    .line 185
    :goto_3
    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->sendScpResults()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "mScpResultsReceiver finished"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->sendMessage(I)V

    .line 126
    return-void
.end method
