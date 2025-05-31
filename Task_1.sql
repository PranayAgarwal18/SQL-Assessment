
-- Create sample tables
CREATE TABLE enquiries (
    enquiry_id String,
    user_id    String,
    date Date
) ENGINE=Memory;

CREATE TABLE txns (
    txn_id     String,
    user_id    String,
    date   Date,
    amount UInt16
) ENGINE=Memory;

-- Insert enquiries
INSERT INTO enquiries VALUES ('e1', 'u15', '2025-03-15');
INSERT INTO enquiries VALUES ('e2', 'u47', '2025-03-17');
INSERT INTO enquiries VALUES ('e3', 'u2', '2025-02-06');
INSERT INTO enquiries VALUES ('e4', 'u17', '2025-03-09');
INSERT INTO enquiries VALUES ('e5', 'u12', '2025-02-15');
INSERT INTO enquiries VALUES ('e6', 'u28', '2025-03-29');
INSERT INTO enquiries VALUES ('e7', 'u27', '2025-01-14');
INSERT INTO enquiries VALUES ('e8', 'u19', '2025-02-19');
INSERT INTO enquiries VALUES ('e9', 'u10', '2025-01-19');
INSERT INTO enquiries VALUES ('e10', 'u12', '2025-02-25');
INSERT INTO enquiries VALUES ('e11', 'u34', '2025-03-12');
INSERT INTO enquiries VALUES ('e12', 'u32', '2025-01-01');
INSERT INTO enquiries VALUES ('e13', 'u47', '2025-02-05');
INSERT INTO enquiries VALUES ('e14', 'u42', '2025-03-02');
INSERT INTO enquiries VALUES ('e15', 'u27', '2025-01-31');
INSERT INTO enquiries VALUES ('e16', 'u7', '2025-02-02');
INSERT INTO enquiries VALUES ('e17', 'u29', '2025-02-10');
INSERT INTO enquiries VALUES ('e18', 'u29', '2025-02-20');
INSERT INTO enquiries VALUES ('e19', 'u25', '2025-02-14');
INSERT INTO enquiries VALUES ('e20', 'u26', '2025-01-10');
INSERT INTO enquiries VALUES ('e21', 'u40', '2025-02-24');
INSERT INTO enquiries VALUES ('e22', 'u4', '2025-02-15');
INSERT INTO enquiries VALUES ('e23', 'u32', '2025-02-09');
INSERT INTO enquiries VALUES ('e24', 'u46', '2025-03-12');
INSERT INTO enquiries VALUES ('e25', 'u16', '2025-01-30');
INSERT INTO enquiries VALUES ('e26', 'u28', '2025-03-25');
INSERT INTO enquiries VALUES ('e27', 'u38', '2025-03-01');
INSERT INTO enquiries VALUES ('e28', 'u27', '2025-03-27');
INSERT INTO enquiries VALUES ('e29', 'u32', '2025-02-04');
INSERT INTO enquiries VALUES ('e30', 'u14', '2025-01-06');
INSERT INTO enquiries VALUES ('e31', 'u39', '2025-01-26');
INSERT INTO enquiries VALUES ('e32', 'u50', '2025-02-28');
INSERT INTO enquiries VALUES ('e33', 'u16', '2025-03-17');
INSERT INTO enquiries VALUES ('e34', 'u36', '2025-02-05');
INSERT INTO enquiries VALUES ('e35', 'u24', '2025-03-19');
INSERT INTO enquiries VALUES ('e36', 'u2', '2025-03-23');
INSERT INTO enquiries VALUES ('e37', 'u46', '2025-02-02');
INSERT INTO enquiries VALUES ('e38', 'u9', '2025-02-13');
INSERT INTO enquiries VALUES ('e39', 'u21', '2025-02-06');
INSERT INTO enquiries VALUES ('e40', 'u5', '2025-01-04');
INSERT INTO enquiries VALUES ('e41', 'u39', '2025-03-11');
INSERT INTO enquiries VALUES ('e42', 'u49', '2025-03-26');
INSERT INTO enquiries VALUES ('e43', 'u32', '2025-02-13');
INSERT INTO enquiries VALUES ('e44', 'u28', '2025-01-12');
INSERT INTO enquiries VALUES ('e45', 'u4', '2025-02-11');
INSERT INTO enquiries VALUES ('e46', 'u36', '2025-02-11');
INSERT INTO enquiries VALUES ('e47', 'u22', '2025-01-13');
INSERT INTO enquiries VALUES ('e48', 'u16', '2025-02-24');
INSERT INTO enquiries VALUES ('e49', 'u45', '2025-01-01');
INSERT INTO enquiries VALUES ('e50', 'u14', '2025-01-09');
INSERT INTO enquiries VALUES ('e51', 'u6', '2025-02-19');
INSERT INTO enquiries VALUES ('e52', 'u3', '2025-01-08');
INSERT INTO enquiries VALUES ('e53', 'u44', '2025-02-26');
INSERT INTO enquiries VALUES ('e54', 'u12', '2025-03-10');
INSERT INTO enquiries VALUES ('e55', 'u24', '2025-03-20');
INSERT INTO enquiries VALUES ('e56', 'u21', '2025-03-02');
INSERT INTO enquiries VALUES ('e57', 'u40', '2025-02-25');
INSERT INTO enquiries VALUES ('e58', 'u5', '2025-02-13');
INSERT INTO enquiries VALUES ('e59', 'u49', '2025-02-10');
INSERT INTO enquiries VALUES ('e60', 'u14', '2025-02-27');
INSERT INTO enquiries VALUES ('e61', 'u40', '2025-01-01');
INSERT INTO enquiries VALUES ('e62', 'u29', '2025-01-23');
INSERT INTO enquiries VALUES ('e63', 'u30', '2025-02-12');
INSERT INTO enquiries VALUES ('e64', 'u28', '2025-02-12');
INSERT INTO enquiries VALUES ('e65', 'u25', '2025-03-07');
INSERT INTO enquiries VALUES ('e66', 'u29', '2025-02-27');
INSERT INTO enquiries VALUES ('e67', 'u18', '2025-01-21');
INSERT INTO enquiries VALUES ('e68', 'u34', '2025-01-16');
INSERT INTO enquiries VALUES ('e69', 'u48', '2025-01-09');
INSERT INTO enquiries VALUES ('e70', 'u27', '2025-02-14');
INSERT INTO enquiries VALUES ('e71', 'u8', '2025-02-08');
INSERT INTO enquiries VALUES ('e72', 'u21', '2025-03-25');
INSERT INTO enquiries VALUES ('e73', 'u16', '2025-03-23');
INSERT INTO enquiries VALUES ('e74', 'u20', '2025-02-19');
INSERT INTO enquiries VALUES ('e75', 'u5', '2025-01-21');
INSERT INTO enquiries VALUES ('e76', 'u46', '2025-02-23');
INSERT INTO enquiries VALUES ('e77', 'u3', '2025-01-11');
INSERT INTO enquiries VALUES ('e78', 'u48', '2025-02-06');
INSERT INTO enquiries VALUES ('e79', 'u44', '2025-01-26');
INSERT INTO enquiries VALUES ('e80', 'u34', '2025-03-26');
INSERT INTO enquiries VALUES ('e81', 'u9', '2025-01-23');
INSERT INTO enquiries VALUES ('e82', 'u25', '2025-01-10');
INSERT INTO enquiries VALUES ('e83', 'u31', '2025-01-09');
INSERT INTO enquiries VALUES ('e84', 'u14', '2025-03-11');
INSERT INTO enquiries VALUES ('e85', 'u39', '2025-03-19');
INSERT INTO enquiries VALUES ('e86', 'u28', '2025-02-27');
INSERT INTO enquiries VALUES ('e87', 'u19', '2025-02-11');
INSERT INTO enquiries VALUES ('e88', 'u12', '2025-03-11');
INSERT INTO enquiries VALUES ('e89', 'u4', '2025-01-25');
INSERT INTO enquiries VALUES ('e90', 'u14', '2025-03-08');
INSERT INTO enquiries VALUES ('e91', 'u14', '2025-02-14');
INSERT INTO enquiries VALUES ('e92', 'u17', '2025-01-07');
INSERT INTO enquiries VALUES ('e93', 'u9', '2025-02-09');
INSERT INTO enquiries VALUES ('e94', 'u2', '2025-02-19');
INSERT INTO enquiries VALUES ('e95', 'u18', '2025-01-24');
INSERT INTO enquiries VALUES ('e96', 'u17', '2025-01-25');
INSERT INTO enquiries VALUES ('e97', 'u10', '2025-02-22');
INSERT INTO enquiries VALUES ('e98', 'u18', '2025-02-03');
INSERT INTO enquiries VALUES ('e99', 'u37', '2025-03-20');
INSERT INTO enquiries VALUES ('e100', 'u46', '2025-03-05');
INSERT INTO enquiries VALUES ('e101', 'u35', '2025-02-20');
INSERT INTO enquiries VALUES ('e102', 'u36', '2025-01-14');
INSERT INTO enquiries VALUES ('e103', 'u46', '2025-03-09');
INSERT INTO enquiries VALUES ('e104', 'u31', '2025-03-04');
INSERT INTO enquiries VALUES ('e105', 'u31', '2025-02-25');
INSERT INTO enquiries VALUES ('e106', 'u6', '2025-01-08');
INSERT INTO enquiries VALUES ('e107', 'u33', '2025-03-15');
INSERT INTO enquiries VALUES ('e108', 'u16', '2025-02-01');
INSERT INTO enquiries VALUES ('e109', 'u34', '2025-02-04');
INSERT INTO enquiries VALUES ('e110', 'u43', '2025-03-13');
INSERT INTO enquiries VALUES ('e111', 'u31', '2025-02-18');
INSERT INTO enquiries VALUES ('e112', 'u23', '2025-03-14');
INSERT INTO enquiries VALUES ('e113', 'u16', '2025-03-03');
INSERT INTO enquiries VALUES ('e114', 'u8', '2025-03-22');
INSERT INTO enquiries VALUES ('e115', 'u13', '2025-01-30');
INSERT INTO enquiries VALUES ('e116', 'u25', '2025-03-01');
INSERT INTO enquiries VALUES ('e117', 'u27', '2025-03-13');
INSERT INTO enquiries VALUES ('e118', 'u28', '2025-01-21');
INSERT INTO enquiries VALUES ('e119', 'u16', '2025-01-24');
INSERT INTO enquiries VALUES ('e120', 'u19', '2025-02-06');
INSERT INTO enquiries VALUES ('e121', 'u3', '2025-03-24');
INSERT INTO enquiries VALUES ('e122', 'u11', '2025-01-14');
INSERT INTO enquiries VALUES ('e123', 'u9', '2025-02-18');
INSERT INTO enquiries VALUES ('e124', 'u6', '2025-02-27');
INSERT INTO enquiries VALUES ('e125', 'u46', '2025-02-20');
INSERT INTO enquiries VALUES ('e126', 'u7', '2025-02-26');
INSERT INTO enquiries VALUES ('e127', 'u38', '2025-03-17');
INSERT INTO enquiries VALUES ('e128', 'u31', '2025-02-04');
INSERT INTO enquiries VALUES ('e129', 'u11', '2025-03-05');
INSERT INTO enquiries VALUES ('e130', 'u3', '2025-03-08');
INSERT INTO enquiries VALUES ('e131', 'u2', '2025-03-09');
INSERT INTO enquiries VALUES ('e132', 'u2', '2025-01-13');
INSERT INTO enquiries VALUES ('e133', 'u46', '2025-02-28');
INSERT INTO enquiries VALUES ('e134', 'u10', '2025-03-27');
INSERT INTO enquiries VALUES ('e135', 'u21', '2025-02-22');
INSERT INTO enquiries VALUES ('e136', 'u43', '2025-02-26');
INSERT INTO enquiries VALUES ('e137', 'u7', '2025-02-25');
INSERT INTO enquiries VALUES ('e138', 'u48', '2025-01-25');
INSERT INTO enquiries VALUES ('e139', 'u11', '2025-02-09');
INSERT INTO enquiries VALUES ('e140', 'u5', '2025-02-02');
INSERT INTO enquiries VALUES ('e141', 'u22', '2025-01-08');
INSERT INTO enquiries VALUES ('e142', 'u47', '2025-02-08');
INSERT INTO enquiries VALUES ('e143', 'u25', '2025-03-08');
INSERT INTO enquiries VALUES ('e144', 'u31', '2025-03-25');
INSERT INTO enquiries VALUES ('e145', 'u31', '2025-02-19');
INSERT INTO enquiries VALUES ('e146', 'u19', '2025-02-26');
INSERT INTO enquiries VALUES ('e147', 'u45', '2025-01-10');
INSERT INTO enquiries VALUES ('e148', 'u13', '2025-01-15');
INSERT INTO enquiries VALUES ('e149', 'u45', '2025-02-24');
INSERT INTO enquiries VALUES ('e150', 'u21', '2025-01-22');
INSERT INTO enquiries VALUES ('e151', 'u23', '2025-02-22');
INSERT INTO enquiries VALUES ('e152', 'u17', '2025-02-15');
INSERT INTO enquiries VALUES ('e153', 'u48', '2025-01-08');
INSERT INTO enquiries VALUES ('e154', 'u12', '2025-02-02');
INSERT INTO enquiries VALUES ('e155', 'u6', '2025-02-10');
INSERT INTO enquiries VALUES ('e156', 'u47', '2025-01-26');
INSERT INTO enquiries VALUES ('e157', 'u38', '2025-01-19');
INSERT INTO enquiries VALUES ('e158', 'u15', '2025-03-26');
INSERT INTO enquiries VALUES ('e159', 'u24', '2025-03-27');
INSERT INTO enquiries VALUES ('e160', 'u34', '2025-02-08');
INSERT INTO enquiries VALUES ('e161', 'u9', '2025-02-02');
INSERT INTO enquiries VALUES ('e162', 'u8', '2025-02-19');
INSERT INTO enquiries VALUES ('e163', 'u10', '2025-03-05');
INSERT INTO enquiries VALUES ('e164', 'u47', '2025-02-24');
INSERT INTO enquiries VALUES ('e165', 'u10', '2025-03-07');
INSERT INTO enquiries VALUES ('e166', 'u26', '2025-03-18');
INSERT INTO enquiries VALUES ('e167', 'u5', '2025-03-11');
INSERT INTO enquiries VALUES ('e168', 'u2', '2025-01-20');
INSERT INTO enquiries VALUES ('e169', 'u35', '2025-02-24');
INSERT INTO enquiries VALUES ('e170', 'u21', '2025-01-19');
INSERT INTO enquiries VALUES ('e171', 'u22', '2025-02-21');
INSERT INTO enquiries VALUES ('e172', 'u8', '2025-03-01');
INSERT INTO enquiries VALUES ('e173', 'u14', '2025-03-18');
INSERT INTO enquiries VALUES ('e174', 'u8', '2025-02-20');
INSERT INTO enquiries VALUES ('e175', 'u27', '2025-02-27');
INSERT INTO enquiries VALUES ('e176', 'u12', '2025-01-04');
INSERT INTO enquiries VALUES ('e177', 'u21', '2025-02-20');
INSERT INTO enquiries VALUES ('e178', 'u35', '2025-03-28');
INSERT INTO enquiries VALUES ('e179', 'u27', '2025-02-25');
INSERT INTO enquiries VALUES ('e180', 'u39', '2025-01-03');
INSERT INTO enquiries VALUES ('e181', 'u2', '2025-02-13');
INSERT INTO enquiries VALUES ('e182', 'u36', '2025-02-22');
INSERT INTO enquiries VALUES ('e183', 'u50', '2025-03-28');
INSERT INTO enquiries VALUES ('e184', 'u28', '2025-02-17');
INSERT INTO enquiries VALUES ('e185', 'u35', '2025-01-11');
INSERT INTO enquiries VALUES ('e186', 'u9', '2025-01-25');
INSERT INTO enquiries VALUES ('e187', 'u39', '2025-01-08');
INSERT INTO enquiries VALUES ('e188', 'u23', '2025-02-08');
INSERT INTO enquiries VALUES ('e189', 'u18', '2025-03-20');
INSERT INTO enquiries VALUES ('e190', 'u19', '2025-02-05');
INSERT INTO enquiries VALUES ('e191', 'u18', '2025-03-23');
INSERT INTO enquiries VALUES ('e192', 'u24', '2025-02-24');
INSERT INTO enquiries VALUES ('e193', 'u37', '2025-01-22');
INSERT INTO enquiries VALUES ('e194', 'u33', '2025-01-19');
INSERT INTO enquiries VALUES ('e195', 'u35', '2025-01-06');
INSERT INTO enquiries VALUES ('e196', 'u36', '2025-01-08');
INSERT INTO enquiries VALUES ('e197', 'u42', '2025-02-24');
INSERT INTO enquiries VALUES ('e198', 'u6', '2025-02-24');
INSERT INTO enquiries VALUES ('e199', 'u44', '2025-01-30');
INSERT INTO enquiries VALUES ('e200', 'u32', '2025-02-16');

-- Insert transactions
INSERT INTO txns VALUES ('t1', 'u15', '2025-03-08', 800);
INSERT INTO txns VALUES ('t2', 'u26', '2025-01-15', 400);
INSERT INTO txns VALUES ('t3', 'u50', '2025-01-27', 600);
INSERT INTO txns VALUES ('t4', 'u22', '2025-01-29', 100);
INSERT INTO txns VALUES ('t5', 'u4', '2025-02-15', 700);
INSERT INTO txns VALUES ('t6', 'u16', '2025-02-15', 400);
INSERT INTO txns VALUES ('t7', 'u22', '2025-02-24', 500);
INSERT INTO txns VALUES ('t8', 'u8', '2025-03-27', 600);
INSERT INTO txns VALUES ('t9', 'u43', '2025-03-08', 400);
INSERT INTO txns VALUES ('t10', 'u14', '2025-03-05', 900);
INSERT INTO txns VALUES ('t11', 'u5', '2025-02-08', 600);
INSERT INTO txns VALUES ('t12', 'u63', '2025-01-18', 1000);
INSERT INTO txns VALUES ('t13', 'u24', '2025-01-23', 700);
INSERT INTO txns VALUES ('t14', 'u36', '2025-03-20', 200);
INSERT INTO txns VALUES ('t15', 'u24', '2025-02-18', 900);
INSERT INTO txns VALUES ('t16', 'u14', '2025-03-03', 500);
INSERT INTO txns VALUES ('t17', 'u58', '2025-03-01', 500);
INSERT INTO txns VALUES ('t18', 'u36', '2025-02-03', 400);
INSERT INTO txns VALUES ('t19', 'u17', '2025-03-17', 300);
INSERT INTO txns VALUES ('t20', 'u23', '2025-02-11', 600);
INSERT INTO txns VALUES ('t21', 'u66', '2025-02-11', 600);
INSERT INTO txns VALUES ('t22', 'u39', '2025-03-28', 300);
INSERT INTO txns VALUES ('t23', 'u20', '2025-01-31', 400);
INSERT INTO txns VALUES ('t24', 'u3', '2025-03-28', 200);
INSERT INTO txns VALUES ('t25', 'u48', '2025-02-04', 500);
INSERT INTO txns VALUES ('t26', 'u67', '2025-02-11', 600);
INSERT INTO txns VALUES ('t27', 'u34', '2025-02-09', 800);
INSERT INTO txns VALUES ('t28', 'u48', '2025-02-10', 300);
INSERT INTO txns VALUES ('t29', 'u47', '2025-02-16', 200);
INSERT INTO txns VALUES ('t30', 'u48', '2025-02-24', 900);
INSERT INTO txns VALUES ('t31', 'u33', '2025-02-23', 200);
INSERT INTO txns VALUES ('t32', 'u4', '2025-01-12', 600);
INSERT INTO txns VALUES ('t33', 'u46', '2025-02-27', 1000);
INSERT INTO txns VALUES ('t34', 'u3', '2025-03-11', 800);
INSERT INTO txns VALUES ('t35', 'u25', '2025-01-02', 200);
INSERT INTO txns VALUES ('t36', 'u32', '2025-02-20', 400);
INSERT INTO txns VALUES ('t37', 'u28', '2025-02-25', 800);
INSERT INTO txns VALUES ('t38', 'u18', '2025-02-13', 800);
INSERT INTO txns VALUES ('t39', 'u18', '2025-03-17', 700);
INSERT INTO txns VALUES ('t40', 'u35', '2025-02-25', 500);
INSERT INTO txns VALUES ('t41', 'u24', '2025-02-19', 600);
INSERT INTO txns VALUES ('t42', 'u20', '2025-03-22', 200);
INSERT INTO txns VALUES ('t43', 'u17', '2025-01-02', 1000);
INSERT INTO txns VALUES ('t44', 'u52', '2025-03-25', 400);
INSERT INTO txns VALUES ('t45', 'u60', '2025-02-24', 1000);
INSERT INTO txns VALUES ('t46', 'u30', '2025-02-23', 200);
INSERT INTO txns VALUES ('t47', 'u15', '2025-02-10', 1000);
INSERT INTO txns VALUES ('t48', 'u52', '2025-03-11', 100);
INSERT INTO txns VALUES ('t49', 'u14', '2025-02-19', 700);
INSERT INTO txns VALUES ('t50', 'u26', '2025-03-06', 300);
INSERT INTO txns VALUES ('t51', 'u25', '2025-02-24', 800);
INSERT INTO txns VALUES ('t52', 'u34', '2025-03-09', 600);
INSERT INTO txns VALUES ('t53', 'u15', '2025-02-24', 400);
INSERT INTO txns VALUES ('t54', 'u39', '2025-01-20', 800);
INSERT INTO txns VALUES ('t55', 'u70', '2025-02-22', 300);
INSERT INTO txns VALUES ('t56', 'u11', '2025-01-17', 900);
INSERT INTO txns VALUES ('t57', 'u12', '2025-03-13', 900);
INSERT INTO txns VALUES ('t58', 'u35', '2025-01-12', 200);
INSERT INTO txns VALUES ('t59', 'u18', '2025-03-13', 100);
INSERT INTO txns VALUES ('t60', 'u48', '2025-01-24', 700);
INSERT INTO txns VALUES ('t61', 'u24', '2025-03-19', 100);
INSERT INTO txns VALUES ('t62', 'u15', '2025-01-17', 600);
INSERT INTO txns VALUES ('t63', 'u7', '2025-02-26', 300);
INSERT INTO txns VALUES ('t64', 'u10', '2025-01-13', 200);
INSERT INTO txns VALUES ('t65', 'u7', '2025-03-27', 100);
INSERT INTO txns VALUES ('t66', 'u36', '2025-01-19', 300);
INSERT INTO txns VALUES ('t67', 'u33', '2025-01-14', 400);
INSERT INTO txns VALUES ('t68', 'u49', '2025-01-04', 900);
INSERT INTO txns VALUES ('t69', 'u53', '2025-03-28', 700);
INSERT INTO txns VALUES ('t70', 'u50', '2025-01-10', 1000);
INSERT INTO txns VALUES ('t71', 'u37', '2025-03-15', 600);
INSERT INTO txns VALUES ('t72', 'u54', '2025-01-12', 100);
INSERT INTO txns VALUES ('t73', 'u37', '2025-02-02', 800);
INSERT INTO txns VALUES ('t74', 'u19', '2025-02-22', 600);
INSERT INTO txns VALUES ('t75', 'u20', '2025-03-09', 400);
INSERT INTO txns VALUES ('t76', 'u36', '2025-01-21', 700);
INSERT INTO txns VALUES ('t77', 'u24', '2025-03-23', 300);
INSERT INTO txns VALUES ('t78', 'u35', '2025-03-22', 800);
INSERT INTO txns VALUES ('t79', 'u16', '2025-02-06', 600);
INSERT INTO txns VALUES ('t80', 'u9', '2025-02-21', 800);
INSERT INTO txns VALUES ('t81', 'u27', '2025-03-23', 400);
INSERT INTO txns VALUES ('t82', 'u22', '2025-03-27', 700);
INSERT INTO txns VALUES ('t83', 'u10', '2025-01-27', 200);
INSERT INTO txns VALUES ('t84', 'u44', '2025-02-04', 500);
INSERT INTO txns VALUES ('t85', 'u21', '2025-01-08', 700);
INSERT INTO txns VALUES ('t86', 'u22', '2025-01-17', 1000);
INSERT INTO txns VALUES ('t87', 'u24', '2025-03-12', 800);
INSERT INTO txns VALUES ('t88', 'u59', '2025-02-17', 200);
INSERT INTO txns VALUES ('t89', 'u10', '2025-03-18', 700);
INSERT INTO txns VALUES ('t90', 'u64', '2025-01-29', 900);
INSERT INTO txns VALUES ('t91', 'u12', '2025-03-11', 800);
INSERT INTO txns VALUES ('t92', 'u45', '2025-02-13', 300);
INSERT INTO txns VALUES ('t93', 'u28', '2025-01-22', 900);
INSERT INTO txns VALUES ('t94', 'u26', '2025-01-03', 800);
INSERT INTO txns VALUES ('t95', 'u31', '2025-03-12', 900);
INSERT INTO txns VALUES ('t96', 'u53', '2025-01-19', 200);
INSERT INTO txns VALUES ('t97', 'u20', '2025-03-28', 500);
INSERT INTO txns VALUES ('t98', 'u5', '2025-01-17', 900);
INSERT INTO txns VALUES ('t99', 'u23', '2025-03-03', 200);
INSERT INTO txns VALUES ('t100', 'u32', '2025-02-25', 800);






SELECT
    user_id,
    date,
    sum(count_enq) AS count_enq,
    sum(count_txns) AS count_txns
FROM
(
    SELECT
        user_id,
        date,
        count() AS count_enq,   -- Count of enquiries
        0 AS count_txns         -- No transactions here
    FROM enquiries
    GROUP BY user_id, date

    UNION ALL

    SELECT
        user_id,
        date,
        0 AS count_enq,
        count() AS count_txns
    FROM txns
    GROUP BY user_id, date
) AS combined
GROUP BY user_id, date
ORDER BY user_id, date;
