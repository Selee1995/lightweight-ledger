.class public final synthetic Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$0:I

    iput p2, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$1:I

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$3:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$0:I

    iget v1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$1:I

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$Q1hxzp0_YpBh574CDnQKDq1EsOQ;->f$3:Lcom/coderpage/base/common/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->lambda$queryRecords$0(IILjava/lang/String;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
