.class public Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;
.super Ljava/lang/Object;
.source "CryptoObjectUtil.java"


# static fields
.field private static final BLOCK_MODE:Ljava/lang/String; = "CBC"

.field private static final ENCRYPTION_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field private static final KEYSTORE_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_NAME:Ljava/lang/String; = "com.coderpage.mine.fingerprint_authentication_key"

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS7Padding"


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 36
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private createCipher(Z)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->getKey()Ljava/security/Key;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 56
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x3

    .line 58
    :try_start_0
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->mKeyStore:Ljava/security/KeyStore;

    const-string v3, "com.coderpage.mine.fingerprint_authentication_key"

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->createCipher(Z)Ljavax/crypto/Cipher;

    :goto_0
    return-object v1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Could not create the cipher for fingerprint authentication."

    invoke-direct {p1, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createKey()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    const-string v1, "AndroidKeyStore"

    .line 78
    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "com.coderpage.mine.fingerprint_authentication_key"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "CBC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 81
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "PKCS7Padding"

    aput-object v4, v3, v5

    .line 82
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-void
.end method

.method private getKey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->mKeyStore:Ljava/security/KeyStore;

    const-string v1, "com.coderpage.mine.fingerprint_authentication_key"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->createKey()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->mKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v0, 0x1

    .line 46
    :try_start_0
    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->createCipher(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {v1, v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
