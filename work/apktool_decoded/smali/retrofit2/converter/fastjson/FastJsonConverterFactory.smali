.class public Lretrofit2/converter/fastjson/FastJsonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "FastJsonConverterFactory.java"


# instance fields
.field private featureValues:I

.field private features:[Lcom/alibaba/fastjson/parser/Feature;

.field private mParserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 27
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->mParserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 28
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->featureValues:I

    return-void
.end method

.method public static create()Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 1

    .line 40
    new-instance v0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;

    invoke-direct {v0}, Lretrofit2/converter/fastjson/FastJsonConverterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 59
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->mParserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getParserFeatureValues()I
    .locals 1

    .line 68
    iget v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->featureValues:I

    return v0
.end method

.method public getParserFeatures()[Lcom/alibaba/fastjson/parser/Feature;
    .locals 1

    .line 77
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-object v0
.end method

.method public getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .line 86
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .line 95
    iget-object v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p1, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;

    iget-object p2, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p3, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p1, p2, p3}, Lretrofit2/converter/fastjson/FastJsonRequestBodyConverter;-><init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 49
    new-instance p2, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;

    iget-object p3, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->mParserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v0, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->featureValues:I

    iget-object v1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->features:[Lcom/alibaba/fastjson/parser/Feature;

    invoke-direct {p2, p1, p3, v0, v1}, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;-><init>(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)V

    return-object p2
.end method

.method public setParserConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 0

    .line 63
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->mParserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object p0
.end method

.method public setParserFeatureValues(I)Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 0

    .line 72
    iput p1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->featureValues:I

    return-object p0
.end method

.method public setParserFeatures([Lcom/alibaba/fastjson/parser/Feature;)Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 0

    .line 81
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-object p0
.end method

.method public setSerializeConfig(Lcom/alibaba/fastjson/serializer/SerializeConfig;)Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 0

    .line 90
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object p0
.end method

.method public setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lretrofit2/converter/fastjson/FastJsonConverterFactory;
    .locals 0

    .line 99
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonConverterFactory;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object p0
.end method
