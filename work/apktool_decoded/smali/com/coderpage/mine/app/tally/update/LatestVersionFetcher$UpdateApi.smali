.class interface abstract Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$UpdateApi;
.super Ljava/lang/Object;
.source "LatestVersionFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "UpdateApi"
.end annotation


# virtual methods
.method public abstract fetchLatestVersion(Lcom/alibaba/fastjson/JSONObject;)Lretrofit2/Call;
    .param p1    # Lcom/alibaba/fastjson/JSONObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/coderpage/mine/app/tally/update/LatestVersionFetcher$LatestVersionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v1/version/latest"
    .end annotation
.end method
