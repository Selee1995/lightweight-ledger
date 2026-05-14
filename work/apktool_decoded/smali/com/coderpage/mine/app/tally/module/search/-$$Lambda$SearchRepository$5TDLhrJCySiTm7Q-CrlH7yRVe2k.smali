.class public final synthetic Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchRepository$5TDLhrJCySiTm7Q-CrlH7yRVe2k;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchRepository;->lambda$saveSearchHistory$6(Ljava/util/List;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
