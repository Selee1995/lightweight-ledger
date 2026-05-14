.class Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;
.super Ljava/lang/Object;
.source "LatestVersionFetcher.java"

# interfaces
.implements Lcom/coderpage/lib/update/SourceFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;,
        Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$UpdateApi;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_BASE_URL:Ljava/lang/String; = "http://app.coderpage.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$fetchApkModel$0(Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coderpage/base/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fetchApkModel()Lcom/coderpage/lib/update/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coderpage/lib/update/Result<",
            "Lcom/coderpage/lib/update/ApkModel;",
            "Lcom/coderpage/lib/update/Error;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/coderpage/lib/update/Result;

    invoke-direct {v0}, Lcom/coderpage/lib/update/Result;-><init>()V

    .line 46
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 58
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v3, "http://app.coderpage.com"

    .line 59
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 61
    invoke-static {}, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->create()Lretrofit2/converter/fastjson/FastJsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 63
    const-class v2, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$UpdateApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$UpdateApi;

    .line 67
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "packageName"

    .line 68
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coderpage/mine/MineApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "channelName"

    const-string v4, "vivo"

    .line 69
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v1, v2}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$UpdateApi;->fetchLatestVersion(Lcom/alibaba/fastjson/JSONObject;)Lretrofit2/Call;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Lcom/coderpage/lib/update/Error;

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/lib/update/Result;->setErr(Ljava/lang/Object;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;

    .line 78
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->getStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 79
    new-instance v2, Lcom/coderpage/lib/update/Error;

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->getStatus()I

    move-result v3

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/lib/update/Result;->setErr(Ljava/lang/Object;)V

    return-object v0

    .line 82
    :cond_1
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;->getLatestVersion()Lcom/coderpage/mine/app/tally/update/LatestVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/Result;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    new-instance v2, Lcom/coderpage/lib/update/Error;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/coderpage/lib/update/Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/coderpage/lib/update/Result;->setErr(Ljava/lang/Object;)V

    return-object v0
.end method
