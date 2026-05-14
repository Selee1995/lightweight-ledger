.class public final synthetic Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$BtaNY9TJwU9iOSS7Mjr5t1IkXwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$BtaNY9TJwU9iOSS7Mjr5t1IkXwM;->f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$BtaNY9TJwU9iOSS7Mjr5t1IkXwM;->f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->lambda$loadSearchHistory$4$SearchViewModel(Ljava/util/List;)V

    return-void
.end method
