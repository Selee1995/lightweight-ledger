.class final Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "FastJsonRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 13
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method varargs constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 19
    iput-object p2, p0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 26
    iget-object v2, p0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 29
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 35
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p1

    .line 38
    :goto_0
    sget-object v0, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
