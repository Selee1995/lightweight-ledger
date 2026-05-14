.class public Lcom/tendcloud/tenddata/i;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final A:Ljava/lang/String; = "TDtime_set_collect_net"

.field private static final B:Ljava/lang/String; = "TDtd_role_id"

.field private static final C:Ljava/lang/String; = "TDpref.accountid.key"

.field private static final D:Ljava/lang/String; = "TDpref.accountgame.key"

.field private static final E:Ljava/lang/String; = "TDpref.missionid.key"

.field private static final F:Ljava/lang/String; = "TDpref.game.session.startsystem.key"

.field public static final a:Ljava/lang/String; = "TDpref.profile.key"

.field public static final b:Ljava/lang/String; = "TDpref.session.key"

.field public static final c:Ljava/lang/String; = "TDpref.session.backup.key"

.field public static final d:Ljava/lang/String; = "TDpref.lastactivity.key"

.field public static final e:Ljava/lang/String; = "TDpref.start.key"

.field public static final f:Ljava/lang/String; = "TDpref.init.key"

.field public static final g:Ljava/lang/String; = "TDpref.init.flag"

.field public static final h:Ljava/lang/String; = "TDpref.actstart.key"

.field public static final i:Ljava/lang/String; = "TDpref.end.key"

.field public static final j:Ljava/lang/String; = "TDpref.ip"

.field public static final k:Ljava/lang/String; = "TD_CHANNEL_ID"

.field public static final l:Ljava/lang/String; = "TDappcontext_push"

.field public static final m:Ljava/lang/String; = "TDpref.tokensync.key"

.field public static final n:Ljava/lang/String; = "TDpref.push.msgid.key"

.field public static final o:Ljava/lang/String; = "TDpref.running.app.key"

.field public static final p:Ljava/lang/String; = "TDpref_longtime"

.field public static final q:Ljava/lang/String; = "TDpref_shorttime"

.field public static final r:Ljava/lang/String; = "TDapp.account.key"

.field public static final s:Ljava/lang/String; = "TDuniversal.account.key"

.field public static final t:Ljava/lang/String; = "TDaes_key"

.field public static final u:Ljava/lang/String; = "TDpref_game"

.field public static final v:Ljava/lang/String; = "TD_push_pref_file"

.field static final w:Ljava/lang/String; = "TDisAppQuiting"

.field public static final x:Ljava/lang/String; = "TDpref.last.sdk.check"

.field public static final y:Ljava/lang/String; = "TDadditionalVersionName"

.field public static final z:Ljava/lang/String; = "TDadditionalVersionCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 81
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDaes_key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static a(Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 4

    .line 104
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDpref_longtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TDpref.session.key"

    invoke-static {v0, p0, v2, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 464
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 467
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static a(JLcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 215
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.start.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.session.key"

    invoke-static {v0, p1, v1, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 455
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(ZLcom/tendcloud/tenddata/a;)V
    .locals 4

    .line 250
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.init.flag"

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 4

    .line 142
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDpref_longtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TDpref.session.backup.key"

    invoke-static {v0, p0, v2, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 518
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 521
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static b()V
    .locals 3

    .line 153
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_CHANNEL_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_called"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(JLcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 228
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.init.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.session.backup.key"

    invoke-static {v0, p1, v1, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 509
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Lcom/tendcloud/tenddata/a;)J
    .locals 5

    .line 203
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.start.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 594
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 597
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "TDpref.accountgame.key"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static c(JLcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 330
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_shorttime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.end.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 605
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "TDpref.accountgame.key"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c()Z
    .locals 3

    .line 166
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "location_called"

    .line 172
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method public static d(Lcom/tendcloud/tenddata/a;)J
    .locals 5

    .line 238
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.init.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .line 191
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 195
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDpref.lastactivity.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static e()J
    .locals 5

    .line 283
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 287
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.init.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static e(Lcom/tendcloud/tenddata/a;)J
    .locals 5

    .line 260
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.init.flag"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static f()J
    .locals 5

    .line 306
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 310
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDpref.actstart.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static f(Lcom/tendcloud/tenddata/a;)J
    .locals 5

    .line 318
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_shorttime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.end.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public static g()J
    .locals 5

    .line 357
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 361
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.running.app.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    .line 390
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 394
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDadditionalVersionName"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static i()J
    .locals 5

    .line 412
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 416
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDadditionalVersionCode"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static j()I
    .locals 5

    .line 427
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/i;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 428
    invoke-static {}, Lcom/tendcloud/tenddata/i;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 430
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->b(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 440
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/i;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/tendcloud/tenddata/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 443
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 4

    .line 482
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 485
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDapp.account.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    .line 500
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 503
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDuniversal.account.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static n()Ljava/lang/String;
    .locals 4

    .line 537
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 540
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDtd_role_id"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static o()J
    .locals 5

    .line 547
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 551
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDtime_set_collect_net"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static p()Ljava/lang/String;
    .locals 4

    .line 573
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 576
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    const-string v3, "TDpref.accountid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static q()Ljava/lang/String;
    .locals 4

    .line 624
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 627
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    const-string v3, "TDpref.missionid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static r()V
    .locals 5

    .line 634
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.game.session.startsystem.key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 4

    .line 654
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 657
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_push_pref_file"

    const-string v3, "TDappcontext_push"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static setAESKey(Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDaes_key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setActivityStartTime(J)V
    .locals 3

    .line 295
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.actstart.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setAdditionalVersionCode(J)V
    .locals 3

    .line 401
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionCode"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setAdditionalVersionName(Ljava/lang/String;)V
    .locals 3

    .line 379
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionName"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setCollectNetInfoTime(J)V
    .locals 3

    .line 557
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtime_set_collect_net"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setCollectRunningTime(J)V
    .locals 3

    .line 350
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.running.app.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setInitTime(J)V
    .locals 3

    .line 273
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.init.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setLastActivity(Ljava/lang/String;)V
    .locals 3

    .line 179
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setLastRoleName(Ljava/lang/String;)V
    .locals 3

    .line 527
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtd_role_id"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setMissionId(Ljava/lang/String;)V
    .locals 3

    .line 615
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.missionid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setPostProfile(Z)V
    .locals 5

    .line 342
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.profile.key"

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setProfileId(Ljava/lang/String;)V
    .locals 3

    .line 583
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.accountid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setProfileInfo(Ljava/lang/String;)V
    .locals 3

    .line 473
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDapp.account.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setPushAppContext(Ljava/lang/String;)V
    .locals 3

    .line 644
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDappcontext_push"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setPushLastMsgId(Ljava/lang/String;)V
    .locals 3

    .line 684
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.push.msgid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setPushSyncTokenLastTime(J)V
    .locals 3

    .line 664
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.tokensync.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setUniversalProfileInfo(Ljava/lang/String;)V
    .locals 3

    .line 491
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDuniversal.account.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static t()J
    .locals 5

    .line 674
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 677
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "TD_push_pref_file"

    const-string v4, "TDpref.tokensync.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public static u()Ljava/lang/String;
    .locals 4

    .line 694
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 697
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_push_pref_file"

    const-string v3, "TDpref.push.msgid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method
