.class Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;
.super Ljava/lang/Object;
.source "OsuServerConnection.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OsuServerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WFATrustManager"
.end annotation


# instance fields
.field private mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private mServerCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/OsuServerConnection;Lcom/android/org/conscrypt/TrustManagerImpl;)V
    .locals 0
    .param p2, "trustManagerImpl"    # Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 153
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "OsuServerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkClientTrusted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "OsuServerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServerTrusted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, "certsValid":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v2, 0x0

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mServerCerts:Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v0, 0x1

    .line 180
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "OsuServerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to validate certs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 181
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    .line 183
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$100(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->getSessionId()I

    move-result v2

    .line 182
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->onServerValidationStatus(IZ)V

    .line 185
    :cond_2
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "OsuServerConnection"

    const-string v1, "getAcceptedIssuers "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderCert()Ljava/security/cert/X509Certificate;
    .locals 9

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mServerCerts:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mServerCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "providerCert":Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$200(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "fqdn":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->mServerCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 207
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v4

    .line 208
    .local v4, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v4, :cond_1

    .line 209
    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 212
    .local v6, "name":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v6, :cond_2

    .line 213
    goto :goto_1

    .line 215
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    const/4 v7, 0x0

    .line 216
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    .line 217
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    move-object v0, v3

    .line 219
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    const-string v5, "OsuServerConnection"

    const-string v7, "OsuCert found"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 224
    .end local v6    # "name":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    goto :goto_1

    .line 225
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_4
    :goto_2
    goto :goto_0

    .line 231
    :cond_5
    goto :goto_3

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/security/cert/CertificateParsingException;
    const-string v3, "OsuServerConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to match certificate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuServerConnection$WFATrustManager;->this$0:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->access$000(Lcom/android/server/wifi/hotspot2/OsuServerConnection;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    invoke-virtual {v2}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .line 232
    .end local v2    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_6
    :goto_3
    return-object v0

    .line 201
    .end local v0    # "providerCert":Ljava/security/cert/X509Certificate;
    .end local v1    # "fqdn":Ljava/lang/String;
    :cond_7
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method
